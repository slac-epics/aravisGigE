TOP=../..

include $(TOP)/configure/CONFIG

# -------------------------------
# Build an Diamond Support Module
# -------------------------------

# Build some little helper functions
#PROD_IOC += aravisTest
#aravisTest_SRCS_DEFAULT += aravisTest.c
#aravisTest_LIBS += $(EPICS_BASE_IOC_LIBS)

LIBRARY_IOC += aravisCamera

# The following are compiled and added to the support library
aravisCamera_SRCS += aravisCamera.cpp

DBD += aravisCameraSupport.dbd

# Set aravis include and lib paths
ifneq ($(ARAVISPREFIX),)
	USR_INCLUDES += -I$(ARAVISPREFIX)/include/aravis-0.4
    ifneq (,$(wildcard $(ARAVISPREFIX)/lib64/libaravis-0.4*))
	    # If these is a glibprefix/lib64/aravis-0.4 dir then use this	    
    	aravis-0.4_DIR = $(ARAVISPREFIX)/lib64
    else
        # Assume it is in the lib directory
		aravis-0.4_DIR = $(ARAVISPREFIX)/lib
	endif
endif

# If glib is not in a standard place, tell the build system where to look
ifneq ($(GLIBPREFIX),)
	USR_INCLUDES += -I$(GLIBPREFIX)/include/glib-2.0
    ifneq (,$(wildcard $(GLIBPREFIX)/lib64/glib-2.0))
	    # If these is a glibprefix/lib64/glib-2.0 dir then use this	    
		USR_INCLUDES += -I$(GLIBPREFIX)/lib64/glib-2.0/include
    	glib-2.0_DIR = $(GLIBPREFIX)/lib64
    else
        # Assume it is in the lib directory
		USR_INCLUDES += -I$(GLIBPREFIX)/lib/glib-2.0/include		
		glib-2.0_DIR = $(GLIBPREFIX)/lib
	endif
endif

USR_LIBS += glib-2.0

# TODO: should pick this up from the vendor directory
USR_LIBS += aravis-0.4

LIB_INSTALLS += $(wildcard $(ARAVISPREFIX)/lib/lib*)
LIB_INSTALLS += $(wildcard $(GLIBPREFIX)/lib/lib*)

include $(TOP)/configure/RULES
