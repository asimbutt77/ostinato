TEMPLATE = app
CONFIG += qt debug
QT += network script
DEFINES += HAVE_REMOTE WPCAP
INCLUDEPATH += "../rpc"
LIBS += -lprotobuf
win32:LIBS += -lwpcap -lpacket
unix:LIBS += -lpcap
win32:LIBS += -L"../common/debug" -lostproto
unix:LIBS += -L"../common" -lostproto
win32:LIBS += -L"../rpc/debug" -lpbrpc
unix:LIBS += -L"../rpc" -lpbrpc
POST_TARGETDEPS += "../common/debug/libostproto.a" "../rpc/debug/libpbrpc.a"
HEADERS += drone.h 
FORMS += drone.ui
SOURCES += drone_main.cpp drone.cpp 
SOURCES += myservice.cpp 
SOURCES += pcapextra.cpp 

