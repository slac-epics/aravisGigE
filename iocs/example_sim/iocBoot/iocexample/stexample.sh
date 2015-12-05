#!/bin/sh
# This file was automatically generated on Tue 06 Jan 2015 11:00:13 GMT from
# source: /dls_sw/prod/R3.14.12.3/support/aravisGigE/0-3-5dls4/etc/makeIocs/example.xml
# 
# *** Please do not edit this file: edit the source file instead. ***
# 
cd "$(dirname "$0")"
if [ -n "$1" ]; then
    export EPICS_CA_SERVER_PORT="$(($1))"
    export EPICS_CA_REPEATER_PORT="$(($1 + 1))"
    [ $EPICS_CA_SERVER_PORT -gt 0 ] || {
        echo "First argument '$1' should be a integer greater than 0"
        exit 1
    }
fi
exec ./example stexample.boot