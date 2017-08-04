#!/bin/bash
adb -d push hi /data/local/tmp/
adb -d push libadd.so /data/local/tmp
adb -d shell chmod 777 /data/local/tmp/hi
adb -d shell chmod 777 /data/local/tmp/libadd.so
adb -d shell /data/local/tmp/hi
