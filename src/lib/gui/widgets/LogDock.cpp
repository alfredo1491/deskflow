/*
 * Deskflow -- mouse and keyboard sharing utility
 * SPDX-FileCopyrightText: (C) 2025 - 2026 Chris Rizzitello <sithlord48@gmail.com>
 * SPDX-License-Identifier: GPL-2.0-only WITH LicenseRef-OpenSSL-Exception
 */

#include "LogDock.h"
#include "LogWidget.h"
#include "SearchWidget.h"
#include "gui/StyleUtils.h"

#include <QEvent>
#include <QHBoxLayout>
#include <QLabel>
#include <QPushButton>
#include <QVBoxLayout>

namespace {
QIcon
resourceActionIcon(const QString &name)
{
  const auto iconPath = QStringLiteral(":/icons/%1-%2/actions/24/%3.svg").arg(kAppId, deskflow::gui::iconMode(), name);
  auto icon = QIcon(iconPath);
  if (icon.isNull()) {
    icon = QIcon(QStringLiteral(":/icons/%1-light/actions/24/%2.svg").arg(kAppId, name));
  }
  return icon;
}
} // namespace

LogDock::LogDock(QWidget *parent)
    : QDockWidget(tr("Log"), parent),
      m_textLog{new LogWidget(this)},
      m_btnClose{new QPushButton(this)},
      m_btnFloat{new QPushButton(this)},
      m_lblTitle{new QLabel(tr("Log"), this)},
      m_searchWidget{new SearchWidget(this)}
{
  connect(m_searchWidget, &SearchWidget::findNext, m_textLog, &LogWidget::findNext);
  connect(m_searchWidget, &SearchWidget::findPrevious, m_textLog, &LogWidget::findPrevious);

  const auto iconSize = QSize(fontMetrics().height() - 2, fontMetrics().height() - 2);
  const auto maxBtnSize = QSize(fontMetrics().height() + 2, fontMetrics().height() + 2);

  m_btnFloat->setFixedSize(maxBtnSize);
  m_btnFloat->setCheckable(true);
  m_btnFloat->setFlat(true);
  m_btnFloat->setIcon(resourceActionIcon(QStringLiteral("window-minimize-pip")));
  m_btnFloat->setIconSize(iconSize);
  m_btnFloat->setToolTip(tr("Detach from window"));
  connect(m_btnFloat, &QPushButton::toggled, this, &LogDock::setFloating);

  m_btnClose->setFixedSize(maxBtnSize);
  m_btnClose->setFlat(true);
  m_btnClose->setIcon(resourceActionIcon(QStringLiteral("view-close")));
  m_btnClose->setIconSize(iconSize);
  m_btnClose->setToolTip(tr("Close Log"));
  connect(m_btnClose, &QPushButton::clicked, this, &QDockWidget::hide);

  auto titleWidget = new QWidget(this);
  titleWidget->installEventFilter(this);

  auto titleLayout = new QHBoxLayout(titleWidget);
  titleLayout->addWidget(m_lblTitle, Qt::AlignLeft | Qt::AlignVCenter);
  titleLayout->addSpacerItem(new QSpacerItem(0, 0, QSizePolicy::Expanding, QSizePolicy::Fixed));
  titleLayout->addWidget(m_searchWidget, Qt::AlignRight | Qt::AlignVCenter);
  titleLayout->addWidget(m_btnFloat, Qt::AlignRight | Qt::AlignVCenter);
  titleLayout->addWidget(m_btnClose, Qt::AlignRight | Qt::AlignVCenter);
  setTitleBarWidget(titleWidget);

  auto bodyWidget = new QWidget(this);
  auto bodyLayout = new QVBoxLayout(bodyWidget);
  bodyLayout->addWidget(m_textLog);
  setWidget(bodyWidget);

  setFeatures(QDockWidget::DockWidgetClosable | QDockWidget::DockWidgetFloatable);
  setAllowedAreas(Qt::BottomDockWidgetArea);
}

void LogDock::appendLine(const QString &msg)
{
  m_textLog->appendLine(msg);
  if (auto p = static_cast<QWidget *>(parent()); p->isVisible() && !p->isMinimized() && !m_searchWidget->isExpanded()) {
    m_textLog->scrollToBottom();
  }
}

void LogDock::setFloating(bool floating)
{
  if (floating) {
    m_btnFloat->setToolTip(tr("Attach to window"));
    m_btnFloat->setIcon(resourceActionIcon(QStringLiteral("window-restore-pip")));
    setWindowFlags(Qt::Dialog);
  } else {
    m_btnFloat->setToolTip(tr("Detach from window"));
    m_btnFloat->setIcon(resourceActionIcon(QStringLiteral("window-minimize-pip")));
    setWindowFlags(Qt::Widget);
  }
  m_lblTitle->setVisible(!floating);
  m_btnClose->setVisible(!floating);
  show();
}

bool LogDock::eventFilter(QObject *watched, QEvent *event)
{
  // Filter out doubleclick on the titlebar, we only want the dock to float if the user users the button on the dock
  if (watched == titleBarWidget() && event->type() == QEvent::MouseButtonDblClick)
    return true;
  return false;
}

void LogDock::changeEvent(QEvent *e)
{
  QDockWidget::changeEvent(e);
  if (e->type() != QEvent::LanguageChange)
    return;

  setWindowTitle(tr("Log"));
  m_lblTitle->setText(tr("Log"));
  m_btnFloat->setToolTip(tr("Detach from window"));
  m_btnClose->setToolTip(tr("Close Log"));
  if (isFloating())
    m_btnFloat->setToolTip(tr("Attach to window"));
  else
    m_btnFloat->setToolTip(tr("Detach from window"));
}
