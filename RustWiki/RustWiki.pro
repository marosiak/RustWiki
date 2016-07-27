QT += qml quick quickcontrols2

CONFIG += c++11

SOURCES += main.cpp \
    class/data.cpp

RESOURCES += qml.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Default rules for deployment.
include(deployment.pri)

DISTFILES += \
    pages/WeaponsPage.qml \
    pages/DataPage.qml \
    components/DataDelegate.qml

HEADERS += \
    class/data.h
