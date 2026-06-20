/*
 * Deskflow -- mouse and keyboard sharing utility
 * SPDX-FileCopyrightText: (C) 2026 Deskflow Developers
 * SPDX-License-Identifier: GPL-2.0-only WITH LicenseRef-OpenSSL-Exception
 */

#include "TransferWindow.h"

#include <QAbstractItemView>
#include <QDesktopServices>
#include <QDateTime>
#include <QHeaderView>
#include <QLabel>
#include <QMenu>
#include <QPoint>
#include <QProgressBar>
#include <QTableWidget>
#include <QTextEdit>
#include <QUrl>
#include <QVBoxLayout>

#include <algorithm>

namespace deskflow::gui {

TransferWindow::TransferWindow(QWidget *parent) : QDialog(parent)
{
  setWindowTitle(tr("File Transfers"));
  resize(760, 460);

  auto *layout = new QVBoxLayout(this);

  auto *title = new QLabel(tr("Transfer queue"), this);
  layout->addWidget(title);

  m_table = new QTableWidget(this);
  m_table->setColumnCount(5);
  m_table->setHorizontalHeaderLabels({tr("Direction"), tr("Name"), tr("Progress"), tr("Size"), tr("Status")});
  m_table->horizontalHeader()->setSectionResizeMode(0, QHeaderView::ResizeToContents);
  m_table->horizontalHeader()->setSectionResizeMode(1, QHeaderView::Stretch);
  m_table->horizontalHeader()->setSectionResizeMode(2, QHeaderView::ResizeToContents);
  m_table->horizontalHeader()->setSectionResizeMode(3, QHeaderView::ResizeToContents);
  m_table->horizontalHeader()->setSectionResizeMode(4, QHeaderView::ResizeToContents);
  m_table->setEditTriggers(QAbstractItemView::NoEditTriggers);
  m_table->setSelectionBehavior(QAbstractItemView::SelectRows);
  m_table->setSelectionMode(QAbstractItemView::SingleSelection);
  m_table->setContextMenuPolicy(Qt::CustomContextMenu);
  connect(m_table, &QTableWidget::customContextMenuRequested, this, &TransferWindow::showContextMenu);
  layout->addWidget(m_table);

  m_overallProgress = new QProgressBar(this);
  m_overallProgress->setRange(0, 1);
  m_overallProgress->setValue(0);
  layout->addWidget(m_overallProgress);

  m_log = new QTextEdit(this);
  m_log->setReadOnly(true);
  m_log->setPlaceholderText(tr("Transfer events"));
  layout->addWidget(m_log);
}

int TransferWindow::addTransfer(const QString &direction, const QString &name, qint64 totalBytes)
{
  const int row = m_table->rowCount();
  m_table->insertRow(row);
  m_table->setItem(row, 0, new QTableWidgetItem(direction));
  m_table->setItem(row, 1, new QTableWidgetItem(name));
  m_table->setItem(row, 2, new QTableWidgetItem(QStringLiteral("0%")));
  m_table->setItem(row, 3, new QTableWidgetItem(humanBytes(totalBytes)));
  m_table->setItem(row, 4, new QTableWidgetItem(tr("Running")));

  ++m_totalTransfers;
  m_overallProgress->setRange(0, m_totalTransfers);
  m_overallProgress->setValue(m_completedTransfers);
  return row;
}

void TransferWindow::updateTransfer(int id, qint64 bytesDone, qint64 totalBytes)
{
  if (id < 0 || id >= m_table->rowCount())
    return;

  const int percent = (totalBytes <= 0) ? 0 : static_cast<int>((bytesDone * 100) / totalBytes);
  m_table->item(id, 2)->setText(QStringLiteral("%1%").arg(std::clamp(percent, 0, 100)));
}

void TransferWindow::finishTransfer(int id, bool success, const QString &statusText)
{
  if (id < 0 || id >= m_table->rowCount())
    return;

  m_table->item(id, 2)->setText(QStringLiteral("100%"));
  auto *statusItem = m_table->item(id, 4);
  const bool wasCompleted = statusItem->data(Qt::UserRole).toBool();
  statusItem->setText(statusText);
  statusItem->setForeground(success ? QBrush(Qt::darkGreen) : QBrush(Qt::red));
  statusItem->setData(Qt::UserRole, true);

  if (!wasCompleted) {
    ++m_completedTransfers;
    m_overallProgress->setValue(std::min(m_completedTransfers, m_totalTransfers));
  }
}

void TransferWindow::appendEvent(const QString &text)
{
  m_log->append(QStringLiteral("[%1] %2").arg(QDateTime::currentDateTime().toString(QStringLiteral("HH:mm:ss")), text));
}

void TransferWindow::setTransferOpenLocation(int id, const QString &path)
{
  if (id < 0 || id >= m_table->rowCount())
    return;

  if (auto *item = m_table->item(id, 1)) {
    item->setData(Qt::UserRole, path);
  }
}

QString TransferWindow::humanBytes(qint64 bytes) const
{
  if (bytes < 1024)
    return QStringLiteral("%1 B").arg(bytes);
  if (bytes < (1024 * 1024))
    return QStringLiteral("%1 KB").arg(QString::number(bytes / 1024.0, 'f', 2));
  if (bytes < (1024LL * 1024LL * 1024LL))
    return QStringLiteral("%1 MB").arg(QString::number(bytes / (1024.0 * 1024.0), 'f', 2));
  return QStringLiteral("%1 GB").arg(QString::number(bytes / (1024.0 * 1024.0 * 1024.0), 'f', 2));
}

void TransferWindow::showContextMenu(const QPoint &pos)
{
  if (!m_table)
    return;

  const auto index = m_table->indexAt(pos);
  if (!index.isValid())
    return;

  const int row = index.row();
  auto *nameItem = m_table->item(row, 1);
  auto *directionItem = m_table->item(row, 0);
  if (!nameItem || !directionItem || directionItem->text() != tr("Incoming"))
    return;

  const auto path = nameItem->data(Qt::UserRole).toString().trimmed();
  if (path.isEmpty())
    return;

  QMenu menu(this);
  auto *openAction = menu.addAction(tr("Open save location"));
  const auto chosen = menu.exec(m_table->viewport()->mapToGlobal(pos));
  if (chosen == openAction) {
    QDesktopServices::openUrl(QUrl::fromLocalFile(path));
  }
}

} // namespace deskflow::gui
