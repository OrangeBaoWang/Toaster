#include <QPainter>
#include <QMenu>
#include <QMouseEvent>
#include "QToasterTunerLCD.h"
#include "ui_QToasterTunerLCD.h"
#include "CtxMenuProvider.h"

QToasterTunerLCD::QToasterTunerLCD(QWidget *parent)
  : QWidget(parent)
  , ui(new Ui::QToasterTunerLCD)
  , mColor(Standard)
  , mpCtxMenuProvider(NULL)
{
  ui->setupUi(this);
  createSkin();
}

QToasterTunerLCD::~QToasterTunerLCD()
{
  delete ui;
}

void QToasterTunerLCD::createSkin()
{
  QString skin = ":/resources/LCD.png";

  QPixmap masterPixmap(skin);

  int width = masterPixmap.width();
  int height = masterPixmap.height() / (NoOfColors + 1); // to compansate a bug in JKnobMan:
                                                         // as JKnobMan doesn't create the last frame properly
                                                         // there must be an additional one
  if(!masterPixmap.isNull())
  {
    int x = 0;
    int y = 0;
    for(int i = 0; i < NoOfColors; i++)
    {
      y = i * height;
      mSkinPixmaps.insert(i, masterPixmap.copy(x, y, width, height));
    }
  }
}

void QToasterTunerLCD::paintEvent(QPaintEvent* /*pe*/)
{
  QPainter painter(this);
  if(mColor < NoOfColors)
  {
    QPixmap pm = mSkinPixmaps[mColor];
    painter.setWindow(0, 0, pm.width(), pm.height());
    painter.drawPixmap(0, 0, pm);
  }
}

void QToasterTunerLCD::contextMenuEvent(QContextMenuEvent * cme)
{
  if(mpCtxMenuProvider)
  {
    QMenu ctxMenu;
    QPoint globalPos = mapToGlobal(cme->pos());
    mpCtxMenuProvider->createMenu(ctxMenu);
    if(!ctxMenu.isEmpty())
      ctxMenu.exec(globalPos);
  }
}

void QToasterTunerLCD::setColor(QToasterTunerLCD::Color color)
{
  mColor = color;
  update();
}
