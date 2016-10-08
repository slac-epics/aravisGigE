#Makefile at top of application tree
TOP = .
include $(TOP)/configure/CONFIG

DIRS := $(DIRS) $(filter-out $(DIRS), configure)
# Commenting out vendor as we now install aravis under $PACKAGE_SITE_TOP
#DIRS := $(DIRS) $(filter-out $(DIRS), vendor)
DIRS := $(DIRS) $(filter-out $(DIRS), $(wildcard *App))
DIRS := $(DIRS) $(filter-out $(DIRS), $(wildcard iocBoot))

ifeq ($(BUILD_IOCS), YES)
#DIRS := $(DIRS) $(filter-out $(DIRS), $(wildcard iocs))
iocs_DEPEND_DIRS += aravisGigEApp
endif

include $(TOP)/configure/RULES_TOP

