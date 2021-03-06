TEMPLATE = app
CONFIG = debug

#SOURCES = main.cpp
SOURCES = main_extended.cpp

LIBS +=  ../../lib/libretroshare.a ../../../../libbitdht/src/lib/libbitdht.a ../../../../openpgpsdk/src/lib/libops.a
LIBS += -lssl -lcrypto -lupnp -lgnome-keyring -lixml -lbz2

INCLUDEPATH *= ../.. ..
linux {
	#LIBS = -lstdc++ -lm 
}
macx {
    # ENABLE THIS OPTION FOR Univeral Binary BUILD.
    #   CONFIG += ppc x86
    #   QMAKE_MACOSX_DEPLOYMENT_TARGET = 10.4
    #   CONFIG -= uitools

        LIBS += ../../lib/libretroshare.a
        LIBS += -lssl -lcrypto -lz -lgpgme -lgpg-error -lassuan
        LIBS += ../../../../../miniupnpc-1.0/libminiupnpc.a
        LIBS += ../../../../libbitdht/src/lib/libbitdht.a
        LIBS += -framework CoreFoundation
        LIBS += -framework Security

 #      LIBS += -framework CoreServices


}

