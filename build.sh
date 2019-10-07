#!/bin/bash

echo "build dir = ${BUILD_DIR}"
CLANG=${BUILD_DIR}/bin/clang
OPT=${BUILD_DIR}/bin/opt
LLC=${BUILD_DIR}/bin/llc

$CLANG -g0 -O3 -Xclang -disable-llvm-passes -S -emit-llvm code.c -o - | $OPT -S -mem2reg -instnamer > ir-before-opt.ll
$OPT -O3 -S ir-before-opt.ll -o - | $OPT -S -mem2reg -instnamer > ir-after-opt.ll
$LLC -O3 ir-after-opt.ll -o assembly.s
