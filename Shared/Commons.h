#ifndef COMMONDEFS_H
#define COMMONDEFS_H

#include <vector>
#include <QString>
#include <QtCore>

using namespace std;

typedef vector<unsigned char> ByteArray;
#define INIT_FROM(x) x, x + sizeof(x)
#define VEC_INSERT(x, y) x.insert(x.end(), y.begin(), y.end())

#define BYTEARRAYDECL(Name) \
  static const unsigned char c##Name[];\
  static const ByteArray s##Name;

#define BYTEARRAYDEF(Class, Name, ...) \
  const unsigned char Class::c##Name[] = {__VA_ARGS__}; \
  const ByteArray Class::s##Name(INIT_FROM(c##Name));


enum FXType
{
  None,                   // -        0x00
//-----orange---------------------
  WahWah,                 // WWAH     0x01
  WahLowPass,             // WLPF     0x02
  WahHighPass,            // WHPF     0x03
  WahVowelFilter,         // WVOW     0x04
  WahPhaser,              // WPHA     0x06
  WahFlanger,             // WFLA     0x07
  WahRateReducer,         // WRR      0x08
  WahRingModulator,       // WRM      0x09
  WahFrequencyShifter,    // W FS     0x0A
  WahFormantShifter,      // WFORM    0x0C
//-----red------------------------
  BitShaper,              // BIT      0x11
  RectiShaper,            // RECT     0x12
  SoftShaper,             // SHAPR    0x13
  HardShaper,             // SHAPR    0x14
  WaveShaper,             // SHAPR    0x15
  GreenScream,            // DIST     0x21
  PlusDS,                 // DIST     0x22
  OneDS,                  // DIST     0x23
  Muffin,                 // DIST     0x24
  MouseDS,                // DIST     0x25
  FuzzDS,                 // DIST     0x26
  MetalDS,                // DIST     0x27
  TrebleBooster,          // BOOST    0x71
  LeadBooster,            // BOOST    0x72
  PureBooster,            // BOOST    0x73
  WahPedalBooster,        // BOOST    0x74
//-----yellow---------------------
  GraphicEqualizer,       // EQ       0x61
  StudioEqualizer,        // EQ       0x62
  MetalEqualizer,         // EQ       0x63
  StereoWeidener,         // WIDE     0x65
//-----cyan-----------------------
  Compressor,             // COMP     0x31
  NoiseGate21,            // GATE     0x39
  NoiseGate41,            // GATE     0x3A
//-----blue-----------------------
  VintageChorus,          // CHO      0x41
  HyperChorus,            // CHO      0x42
  AirChorus,              // CHO      0x43
  MicroPitch,             // µPTC     0x47
  Vibrato,                // VIB      0x44
  RotarySpeaker,          // ROT      0x45
  Tremolo,                // TREM     0x46
//-----purple---------------------
  Phaser,                 // PHA      0x51
  PhaserVibe,             // PHA      0x52
  PhaserOneway,           // PHA      0x53
  Flanger,                // FLA      0x59
  FlangerOneway,          // FLA      0x5B
//-----green----------------------
  Space,                  // SPCE     0x40
//-----white----------------------
  Transpose,              // TRP      0x81
  PedalPitch,             // PPTC     0x0B
  PedalVinylStop,         // PVSP     0x0D
  ChromaticPitch,         // CHROM    0x82
  HarmonicPitch,          // HARM     0x83
  AnalogOctaver,          // OCT      0x84
  LoopMono,               // LOOP     0x79
  LoopStereo,             // LOOP     0x7A
  LoopDistortion          // LOOP     0x7B
};

Q_DECLARE_METATYPE(::FXType)


enum StompInstance
{
  StompA,
  StompB,
  StompC,
  StompD,
  StompX,
  StompMOD
};

struct FXDefinition
{
  QString         mName;
  QString         mShort;
  unsigned char   mSysExCode;
};


#endif // COMMONDEFS_H
