/*
 * Deskflow -- mouse and keyboard sharing utility
 * SPDX-FileCopyrightText: (C) 2026 Deskflow Developers
 * SPDX-License-Identifier: GPL-2.0-only WITH LicenseRef-OpenSSL-Exception
 */

#pragma once

#include <QDialog>
#include <QString>

class QLabel;
class QProgressBar;
class QTableWidget;
class QTextEdit;

namespace deskflow::gui {

class TransferWindow : public QDialog
{
  Q_OBJECT

public:
  explicit TransferWindow(QWidget *parent = nullptr);
  int addTransfer(const QString &direction, const QString &name, qint64 totalBytes);
  void updateTransfer(int id, qint64 bytesDone, qint64 totalBytes);
  void finishTransfer(int id, bool success, const QString &statusText);
  void appendEvent(const QString &text);
  void setTransferOpenLocation(int id, const QString &path);

private:
  QString humanBytes(qint64 bytes) const;
  void showContextMenu(const QPoint &pos);

  QTableWidget *m_table = nullptr;
  QProgressBar *m_overallProgress = nullptr;
  QTextEdit *m_log = nullptr;
  int m_totalTransfers = 0;
  int m_completedTransfers = 0;
};

} // namespace deskflow::gui
