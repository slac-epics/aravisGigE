#!/usr/bin/bash

export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$(realpath "$0")/lib/$EPICS_HOST_ARCH
