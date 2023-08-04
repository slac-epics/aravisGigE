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
aravisCamera_SRCS += aravisCamera.cpp camera_ts.cpp

DBD += aravisCameraSupport.dbd

# Set aravis include and lib paths
ifneq ($(ARAVISPREFIX),)
	USR_INCLUDES += -I$(ARAVISPREFIX)/include/aravis-0.6
    ifneq (,$(wildcard $(ARAVISPREFIX)/lib64/libaravis-0.6*))
	    # If these is a glibprefix/lib64/aravis-0.6 dir then use this	    
	aravis-0.6_DIR = $(ARAVISPREFIX)/lib64
    else
        # Assume it is in the lib directory
		aravis-0.6_DIR = $(ARAVISPREFIX)/lib
    endif
	LIB_INSTALLS += $(wildcard $(aravis-0.6_DIR)/lib*)
	BIN_INSTALLS += $(wildcard $(ARAVISPREFIX)/bin/*)
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
	USR_INCLUDES += -I$(GLIBPREFIX)/include
	LIB_INSTALLS += $(wildcard $(glib-2.0_DIR)/lib*)
endif

ifneq ($(FFI_LIB),)
#	USR_INCLUDES += -I$(FFI_TOP)/lib/libffi-3.2.1/include
	ffi_DIR = $(FFI_LIB)
	USR_LIBS += ffi
	LIB_INSTALLS += $(wildcard $(FFI_LIB)/lib*)
endif

ifneq ($(PCRE_LIB),)
	pcre_DIR = $(PCRE_LIB)
	USR_LIBS += pcre
	LIB_INSTALLS += $(wildcard $(PCRE_LIB)/lib*)
endif

ifneq ($(LIBUSB_TOP),)
	LIB_INSTALLS += $(wildcard $(LIBUSB_TOP)/lib/lib*)
endif
ifneq ($(GLIBMM_TOP),)
	LIB_INSTALLS += $(wildcard $(GLIBMM_TOP)/lib/lib*)
endif
ifneq ($(UTIL_LINUX_TOP),)
	LIB_INSTALLS += $(wildcard $(UTIL_LINUX_TOP)/lib/lib*)
endif

USR_LIBS += glib-2.0

# TODO: should pick this up from the vendor directory
USR_LIBS += aravis-0.6

include $(TOP)/configure/RULES
