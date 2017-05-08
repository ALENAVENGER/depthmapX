include(../defaults.pri)
TEMPLATE = app
CONFIG += console c++11
CONFIG -= app_bundle
CONFIG -= qt
INCLUDEPATH += ../ThirdParty/Catch

SOURCES += main.cpp \
    ../depthmapXcli/commandlineparser.cpp \
    testcommandlineparser.cpp \
    testradiusconverter.cpp \
    ../depthmapXcli/radiusconverter.cpp \
    testsimpletimer.cpp \
    testvgaparser.cpp \
    ../depthmapXcli/vgaparser.cpp \
    testlinkparser.cpp \
    ../depthmapXcli/linkparser.cpp \
    testargumentholder.cpp \
    testperformancewriter.cpp

HEADERS += \
    ../depthmapXcli/commandlineparser.h \
    ../depthmapXcli/radiusconverter.h \
    ../depthmapXcli/simpletimer.h \
    ../depthmapXcli/vgaparser.h \
    ../depthmapXcli/linkparser.h \
    argumentholder.h

win32:Release:LIBS += -L../genlib/release -L../salalib/release
win32:Debug:LIBS += -L../genlib/debug -L../salalib/debug
!win32:LIBS += -L../genlib -L../salalib

LIBS += -lsalalib -lgenlib
