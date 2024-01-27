#!/usr/bin/bash

bash -c 'export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)/lib/$EPICS_HOST_ARCH; exec bash'
