#!/bin/sh

echo "cleaning firmware"
make clean TARGET=REVOLT

echo "compiling firmware"
make TARGET=REVOLT

echo "building bin"
arm-none-eabi-objcopy -O binary obj/main/cleanflight_REVOLT.elf obj/cleanflight_REVOLT.bin
echo "building complete"

