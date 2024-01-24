#!/bin/bash

mkdir -p build
cp tta-bbl.sfc build/tta-bbl-fixes.sfc
./asar --no-title-check main.asm build/tta-bbl-fixes.sfc
