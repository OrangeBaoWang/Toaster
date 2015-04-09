#ifndef STOMP_H
#define STOMP_H

#include <QObject>
#include "StompMidi.h"

class Stomp : public QObject, public StompMidi
{
  Q_OBJECT
public:
  Stomp(StompMidi::Instance instance);
  ~Stomp();
  
  enum FXType
  {
    WahWah,
    WahLowPass,
    WahHighPass,
    WahVowel,
    WahPhaser,
    WahFlanger,
    WahRateReducer,
    WahRingModulator,
    WahFrequencyShifter,
    WahFormantShifter
    // todo: continue
  };

  void requestAllValues();

signals:
  void onOffReceived(bool onOff);
  void typeReceived(FXType type);
  
public slots:
  void applyOnOff(bool onOff);
  void applyType(FXType type);
  
protected:
  // StompMidi
  virtual void midiOnOffReceived(unsigned short rawVal); 
  virtual void midiTypeReceived(unsigned short rawVal);
};

#endif // STOMP_H
