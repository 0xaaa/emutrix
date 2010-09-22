#############################################################################
# Makefile for building: emutrix
# Generated by qmake (2.01a) (Qt 4.6.2) on: Wed Sep 22 00:49:42 2010
# Project:  emutrix.pro
# Template: app
# Command: /usr/bin/qmake-qt4 -spec /usr/share/qt4/mkspecs/linux-g++ -unix CONFIG+=debug -o Makefile emutrix.pro
#############################################################################

####### Compiler, tools and options

CC            = gcc
CXX           = g++
DEFINES       = -DAPPLICATION_NAME=\"$(TARGET)\" -DQT_GUI_LIB -DQT_CORE_LIB -DQT_SHARED
CFLAGS        = -pipe -g -Wall -W -D_REENTRANT $(DEFINES)
CXXFLAGS      = -pipe -g -Wall -W -D_REENTRANT $(DEFINES)
INCPATH       = -I/usr/share/qt4/mkspecs/linux-g++ -I. -I/usr/include/qt4/QtCore -I/usr/include/qt4/QtGui -I/usr/include/qt4 -I. -I.
LINK          = g++
LFLAGS        = 
LIBS          = $(SUBLIBS)  -L/usr/lib -lasound -lQtGui -lQtCore -lpthread 
AR            = ar cqs
RANLIB        = 
QMAKE         = /usr/bin/qmake-qt4
TAR           = tar -cf
COMPRESS      = gzip -9f
COPY          = cp -f
SED           = sed
COPY_FILE     = $(COPY)
COPY_DIR      = $(COPY) -r
STRIP         = strip
INSTALL_FILE  = install -m 644 -p
INSTALL_DIR   = $(COPY_DIR)
INSTALL_PROGRAM = install -m 755 -p
DEL_FILE      = rm -f
SYMLINK       = ln -f -s
DEL_DIR       = rmdir
MOVE          = mv -f
CHK_DIR_EXISTS= test -d
MKDIR         = mkdir -p

####### Output directory

OBJECTS_DIR   = ./

####### Files

SOURCES       = src/main.cc \
		src/mainwindow.cc \
		src/mainwindow_slots.cc \
		src/soundcard.cc moc_mainwindow.cpp \
		qrc_emutrix.cpp
OBJECTS       = main.o \
		mainwindow.o \
		mainwindow_slots.o \
		soundcard.o \
		moc_mainwindow.o \
		qrc_emutrix.o
DIST          = Makefile \
		README \
		COPYING \
		res/panic.png \
		res/session.png \
		res/link.png \
		res/device.png \
		res/emutrix.png \
		res/mute.png \
		/usr/share/qt4/mkspecs/common/g++.conf \
		/usr/share/qt4/mkspecs/common/unix.conf \
		/usr/share/qt4/mkspecs/common/linux.conf \
		/usr/share/qt4/mkspecs/qconfig.pri \
		/usr/share/qt4/mkspecs/features/qt_functions.prf \
		/usr/share/qt4/mkspecs/features/qt_config.prf \
		/usr/share/qt4/mkspecs/features/exclusive_builds.prf \
		/usr/share/qt4/mkspecs/features/default_pre.prf \
		/usr/share/qt4/mkspecs/features/debug.prf \
		/usr/share/qt4/mkspecs/features/default_post.prf \
		/usr/share/qt4/mkspecs/features/warn_on.prf \
		/usr/share/qt4/mkspecs/features/qt.prf \
		/usr/share/qt4/mkspecs/features/unix/thread.prf \
		/usr/share/qt4/mkspecs/features/moc.prf \
		/usr/share/qt4/mkspecs/features/resources.prf \
		/usr/share/qt4/mkspecs/features/uic.prf \
		/usr/share/qt4/mkspecs/features/yacc.prf \
		/usr/share/qt4/mkspecs/features/lex.prf \
		/usr/share/qt4/mkspecs/features/include_source_dir.prf \
		emutrix.pro
QMAKE_TARGET  = emutrix
DESTDIR       = 
TARGET        = emutrix

first: all
####### Implicit rules

.SUFFIXES: .o .c .cpp .cc .cxx .C

.cpp.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.cc.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.cxx.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.C.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.c.o:
	$(CC) -c $(CFLAGS) $(INCPATH) -o "$@" "$<"

####### Build rules

all: Makefile $(TARGET)

$(TARGET): ui_mainwindow.h $(OBJECTS)  
	$(LINK) $(LFLAGS) -o $(TARGET) $(OBJECTS) $(OBJCOMP) $(LIBS)

Makefile: emutrix.pro  /usr/share/qt4/mkspecs/linux-g++/qmake.conf /usr/share/qt4/mkspecs/common/g++.conf \
		/usr/share/qt4/mkspecs/common/unix.conf \
		/usr/share/qt4/mkspecs/common/linux.conf \
		/usr/share/qt4/mkspecs/qconfig.pri \
		/usr/share/qt4/mkspecs/features/qt_functions.prf \
		/usr/share/qt4/mkspecs/features/qt_config.prf \
		/usr/share/qt4/mkspecs/features/exclusive_builds.prf \
		/usr/share/qt4/mkspecs/features/default_pre.prf \
		/usr/share/qt4/mkspecs/features/debug.prf \
		/usr/share/qt4/mkspecs/features/default_post.prf \
		/usr/share/qt4/mkspecs/features/warn_on.prf \
		/usr/share/qt4/mkspecs/features/qt.prf \
		/usr/share/qt4/mkspecs/features/unix/thread.prf \
		/usr/share/qt4/mkspecs/features/moc.prf \
		/usr/share/qt4/mkspecs/features/resources.prf \
		/usr/share/qt4/mkspecs/features/uic.prf \
		/usr/share/qt4/mkspecs/features/yacc.prf \
		/usr/share/qt4/mkspecs/features/lex.prf \
		/usr/share/qt4/mkspecs/features/include_source_dir.prf \
		/usr/lib/libQtGui.prl \
		/usr/lib/libQtCore.prl
	$(QMAKE) -spec /usr/share/qt4/mkspecs/linux-g++ -unix CONFIG+=debug -o Makefile emutrix.pro
/usr/share/qt4/mkspecs/common/g++.conf:
/usr/share/qt4/mkspecs/common/unix.conf:
/usr/share/qt4/mkspecs/common/linux.conf:
/usr/share/qt4/mkspecs/qconfig.pri:
/usr/share/qt4/mkspecs/features/qt_functions.prf:
/usr/share/qt4/mkspecs/features/qt_config.prf:
/usr/share/qt4/mkspecs/features/exclusive_builds.prf:
/usr/share/qt4/mkspecs/features/default_pre.prf:
/usr/share/qt4/mkspecs/features/debug.prf:
/usr/share/qt4/mkspecs/features/default_post.prf:
/usr/share/qt4/mkspecs/features/warn_on.prf:
/usr/share/qt4/mkspecs/features/qt.prf:
/usr/share/qt4/mkspecs/features/unix/thread.prf:
/usr/share/qt4/mkspecs/features/moc.prf:
/usr/share/qt4/mkspecs/features/resources.prf:
/usr/share/qt4/mkspecs/features/uic.prf:
/usr/share/qt4/mkspecs/features/yacc.prf:
/usr/share/qt4/mkspecs/features/lex.prf:
/usr/share/qt4/mkspecs/features/include_source_dir.prf:
/usr/lib/libQtGui.prl:
/usr/lib/libQtCore.prl:
qmake:  FORCE
	@$(QMAKE) -spec /usr/share/qt4/mkspecs/linux-g++ -unix CONFIG+=debug -o Makefile emutrix.pro

dist: 
	@$(CHK_DIR_EXISTS) .tmp/emutrix0.2 || $(MKDIR) .tmp/emutrix0.2 
	$(COPY_FILE) --parents $(SOURCES) $(DIST) .tmp/emutrix0.2/ && $(COPY_FILE) --parents src/sanealsa.h src/mainwindow.h src/soundcard.h src/matrix_visibility.h .tmp/emutrix0.2/ && $(COPY_FILE) --parents res/emutrix.qrc .tmp/emutrix0.2/ && $(COPY_FILE) --parents src/main.cc src/mainwindow.cc src/mainwindow_slots.cc src/soundcard.cc .tmp/emutrix0.2/ && $(COPY_FILE) --parents res/mainwindow.ui .tmp/emutrix0.2/ && (cd `dirname .tmp/emutrix0.2` && $(TAR) emutrix0.2.tar emutrix0.2 && $(COMPRESS) emutrix0.2.tar) && $(MOVE) `dirname .tmp/emutrix0.2`/emutrix0.2.tar.gz . && $(DEL_FILE) -r .tmp/emutrix0.2


clean:compiler_clean 
	-$(DEL_FILE) $(OBJECTS)
	-$(DEL_FILE) *~ core *.core


####### Sub-libraries

distclean: clean
	-$(DEL_FILE) $(TARGET) 
	-$(DEL_FILE) Makefile


mocclean: compiler_moc_header_clean compiler_moc_source_clean

mocables: compiler_moc_header_make_all compiler_moc_source_make_all

compiler_moc_header_make_all: moc_mainwindow.cpp
compiler_moc_header_clean:
	-$(DEL_FILE) moc_mainwindow.cpp
moc_mainwindow.cpp: src/mainwindow.h
	/usr/bin/moc-qt4 $(DEFINES) $(INCPATH) src/mainwindow.h -o moc_mainwindow.cpp

compiler_rcc_make_all: qrc_emutrix.cpp
compiler_rcc_clean:
	-$(DEL_FILE) qrc_emutrix.cpp
qrc_emutrix.cpp: res/emutrix.qrc \
		res/emutrix.png \
		res/session.png \
		res/panic.png \
		res/device.png \
		res/mute.png \
		res/link.png
	/usr/bin/rcc -name emutrix res/emutrix.qrc -o qrc_emutrix.cpp

compiler_image_collection_make_all: qmake_image_collection.cpp
compiler_image_collection_clean:
	-$(DEL_FILE) qmake_image_collection.cpp
compiler_moc_source_make_all:
compiler_moc_source_clean:
compiler_uic_make_all: ui_mainwindow.h
compiler_uic_clean:
	-$(DEL_FILE) ui_mainwindow.h
ui_mainwindow.h: res/mainwindow.ui
	/usr/bin/uic-qt4 res/mainwindow.ui -o ui_mainwindow.h

compiler_yacc_decl_make_all:
compiler_yacc_decl_clean:
compiler_yacc_impl_make_all:
compiler_yacc_impl_clean:
compiler_lex_make_all:
compiler_lex_clean:
compiler_clean: compiler_moc_header_clean compiler_rcc_clean compiler_uic_clean 

####### Compile

main.o: src/main.cc src/mainwindow.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o main.o src/main.cc

mainwindow.o: src/mainwindow.cc src/mainwindow.h \
		ui_mainwindow.h \
		src/soundcard.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o mainwindow.o src/mainwindow.cc

mainwindow_slots.o: src/mainwindow_slots.cc src/mainwindow.h \
		ui_mainwindow.h \
		src/soundcard.h \
		src/matrix_visibility.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o mainwindow_slots.o src/mainwindow_slots.cc

soundcard.o: src/soundcard.cc src/soundcard.h \
		src/mainwindow.h \
		src/sanealsa.h \
		ui_mainwindow.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o soundcard.o src/soundcard.cc

moc_mainwindow.o: moc_mainwindow.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_mainwindow.o moc_mainwindow.cpp

qrc_emutrix.o: qrc_emutrix.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o qrc_emutrix.o qrc_emutrix.cpp

####### Install

install:   FORCE

uninstall:   FORCE

FORCE:

