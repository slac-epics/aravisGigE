TOP=../..
include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE

PROD_NAME = aravisGigEApp
PROD_IOC_Linux  += $(PROD_NAME)
PROD_IOC_Darwin += $(PROD_NAME)

# <name>.dbd will be created from <name>Include.dbd
DBD += $(PROD_NAME).dbd
$(PROD_NAME)_DBD += aravisCameraSupport.dbd

# <name>_registerRecordDeviceDriver.cpp will be created from <name>.dbd
PROD_SRCS += $(PROD_NAME)_registerRecordDeviceDriver.cpp $(PROD_NAME)Main.cpp

# Add locally compiled object code
PROD_LIBS += aravisCamera
PROD_LIBS += aravis-0.6

lzma_DIR = $(XZ_LIB)
z_DIR = $(ZLIB_LIB)
xml2_DIR = $(LIBXML2_LIB)
ffi_DIR = $(FFI_LIB)

# AreaDetector
USR_LIBS += xml2
USR_LIBS += z
USR_LIBS += lzma

# Aravis
USR_LIBS += gio-2.0
USR_LIBS += gobject-2.0 #2
USR_LIBS += gthread-2.0 #3
USR_LIBS += gmodule-2.0 #4
USR_LIBS += glib-2.0    #5
USR_LIBS += ffi
USR_SYS_LIBS += resolv

USR_INCLUDES += $(ZLIB_INCLUDE)
USR_INCLUDES += $(XZ_INCLUDE)
USR_INCLUDES += $(LIBXML2_INCLUDE)
USR_INCLUDES += $(FFI_INCLUDE)

include $(ADCORE)/ADApp/commonDriverMakefile

#=============================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

