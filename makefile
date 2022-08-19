
BIN_LIB=CMPSYS
FILE_SRC_RPG=PSHOBJSRC
LIBLIST=$(BIN_LIB) SAMPLE
FILESRCRPG=$(FILE_SRC_RPG)
SHELL=/QOpenSys/usr/bin/qsh

all: systeme.rpgle


%.rpgle:
	system -s "CHGATR OBJ('./$(FILESRCRPG)/$*.rpgle') ATR(*CCSID) VALUE(1252)"
	liblist -a $(LIBLIST);\
	system "CRTMOD MODULE($(BIN_LIB)/$*) SRCSTMF('./$(FILESRCRPG)/$*.rpgle') DBGVIEW(*ALL) OPTION(*EVENTF)"