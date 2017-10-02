# QTRB

## Introduction
The name **QTRB** means "Qt Raspbian", it's a preconfigured **Raspbian OS** with a recent **Qt**.

This project is inspired by [QtRpi](https://github.com/neuronalmotion/qtrpi) but targets different achivements:
 * providing a **ready-to-use package** (QTRB system image, developper tools, ...)
 * support only one recent version of **Qt** (5.9.1)
 * support only one recent version of **Raspbian** (Stretch: 2017-09)
 * support a lot of **Qt modules**

## config summary
```
Building on: linux-g++ (x86_64, CPU features: mmx sse sse2)
Building for: devices/linux-rasp-pi3-g++ (arm, CPU features: neon)
Configuration: cross_compile compile_examples enable_new_dtags largefile neon shared rpath release c++11 concurrent dbus mremap reduce_exports stl
Build options:
  Mode ................................... release
  Optimize release build for size ........ no
  Building shared libraries .............. yes
  Using C++ standard ..................... C++11
  Using gold linker ...................... no
  Using new DTAGS ........................ yes
  Using precompiled headers .............. no
  Using LTCG ............................. no
  Target compiler supports:
    NEON ................................. yes
  Build parts ............................ libs
Qt modules and options:
  Qt Concurrent .......................... yes
  Qt D-Bus ............................... yes
  Qt D-Bus directly linked to libdbus .... no
  Qt Gui ................................. yes
  Qt Network ............................. yes
  Qt Sql ................................. yes
  Qt Testlib ............................. yes
  Qt Widgets ............................. yes
  Qt Xml ................................. yes
Support enabled for:
  Using pkg-config ....................... yes
  QML debugging .......................... yes
  udev ................................... no
  Using system zlib ...................... yes
Qt Core:
  DoubleConversion ....................... yes
    Using system DoubleConversion ........ no
  GLib ................................... no
  iconv .................................. yes
  ICU .................................... no
  Logging backends:
    journald ............................. no
    syslog ............................... no
    slog2 ................................ no
  Using system PCRE2 ..................... no
Qt Network:
  getaddrinfo() .......................... yes
  getifaddrs() ........................... yes
  IPv6 ifname ............................ yes
  libproxy ............................... no
  OpenSSL ................................ no
    Qt directly linked to OpenSSL ........ no
  SCTP ................................... no
  Use system proxies ..................... yes
Qt Gui:
  Accessibility .......................... yes
  FreeType ............................... yes
    Using system FreeType ................ yes
  HarfBuzz ............................... yes
    Using system HarfBuzz ................ no
  Fontconfig ............................. yes
  Image formats:
    GIF .................................. yes
    ICO .................................. yes
    JPEG ................................. yes
      Using system libjpeg ............... no
    PNG .................................. yes
      Using system libpng ................ yes
  EGL .................................... yes
  OpenVG ................................. no
  OpenGL:
    Desktop OpenGL ....................... no
    OpenGL ES 2.0 ........................ yes
    OpenGL ES 3.0 ........................ no
    OpenGL ES 3.1 ........................ no
  Session Management ..................... yes
Features used by QPA backends:
  evdev .................................. yes
  libinput ............................... no
  INTEGRITY HID .......................... no
  mtdev .................................. no
  tslib .................................. no
  xkbcommon-evdev ........................ no
QPA backends:
  DirectFB ............................... no
  EGLFS .................................. yes
  EGLFS details:
    EGLFS i.Mx6 .......................... no
    EGLFS i.Mx6 Wayland .................. no
    EGLFS EGLDevice ...................... no
    EGLFS GBM ............................ no
    EGLFS Mali ........................... no
    EGLFS Raspberry Pi ................... yes
    EGL on X11 ........................... no
  LinuxFB ................................ yes
  VNC .................................... yes
  Mir client ............................. no
  X11:
    Using system-provided XCB libraries .. no
    EGL on X11 ........................... no
    Xinput2 .............................. yes
    XCB XKB .............................. yes
    XLib ................................. yes
    XCB render ........................... yes
    XCB GLX .............................. yes
    XCB Xlib ............................. yes
    Using system-provided xkbcommon ...... no
Qt Widgets:
  GTK+ ................................... no
  Styles ................................. Fusion Windows
Qt PrintSupport:
  CUPS ................................... no
Qt Sql:
  DB2 (IBM) .............................. no
  InterBase .............................. no
  MySql .................................. no
  OCI (Oracle) ........................... no
  ODBC ................................... no
  PostgreSQL ............................. no
  SQLite2 ................................ no
  SQLite ................................. yes
    Using system provided SQLite ......... no
  TDS (Sybase) ........................... no
Qt SerialBus:
  Socket CAN ............................. yes
  Socket CAN FD .......................... yes
QtXmlPatterns:
  XML schema support ..................... yes
Qt QML:
  QML interpreter ........................ yes
  QML network support .................... yes
Qt Quick:
  Direct3D 12 ............................ no
  AnimatedImage item ..................... yes
  Canvas item ............................ yes
  Support for Qt Quick Designer .......... yes
  Flipable item .......................... yes
  GridView item .......................... yes
  ListView item .......................... yes
  Path support ........................... yes
  PathView item .......................... yes
  Positioner items ....................... yes
  ShaderEffect item ...................... yes
  Sprite item ............................ yes
Qt Gamepad:
  SDL2 ................................... no
Qt 3D:
  Assimp ................................. yes
  System Assimp .......................... no
  Output Qt3D Job traces ................. no
  Output Qt3D GL traces .................. no
Qt 3D GeometryLoaders:
  Autodesk FBX ........................... no
Qt Wayland Client ........................ no
Qt Wayland Compositor .................... no
Qt Bluetooth:
  BlueZ .................................. no
  BlueZ Low Energy ....................... no
  Linux Crypto API ....................... no
Qt Sensors:
  sensorfw ............................... no
Qt Multimedia:
  ALSA ................................... no
  GStreamer 1.0 .......................... no
  GStreamer 0.10 ......................... no
  Video for Linux ........................ yes
  OpenAL ................................. no
  PulseAudio ............................. no
  Resource Policy (libresourceqt5) ....... no
  Windows Audio Services ................. no
  DirectShow ............................. no
  Windows Media Foundation ............... no
Qt Quick Controls 2:
  Styles ................................. Default Material Universal
Qt Quick Templates 2:
  Hover support .......................... yes
  Multi-touch support .................... yes
Qt Location:
  Gypsy GPS Daemon ....................... no
  WinRT Geolocation API .................. no
Qt WebEngine:
  Embedded build ......................... yes
  Pepper Plugins ......................... no
  Printing and PDF ....................... no
  Proprietary Codecs ..................... no
  Spellchecker ........................... yes
  WebRTC ................................. no
  Using system ninja ..................... no
  ALSA ................................... no
  PulseAudio ............................. no
  System libraries:
    ICU .................................. no
    libwebp and libwebpdemux ............. no
    Opus ................................. no
    ffmpeg ............................... no

Note: Also available for Linux: linux-clang linux-icc

Note: Disabling Linux Accessibility Bridge: D-Bus is missing.

Note: No wayland-egl support detected. Cross-toolkit compatibility disabled.
```
