#!/bin/sh

set -ev

./tools/bazel test //:host
./tools/bazel build --cpu=stm32g4 -c opt //:target
./tools/bazel build --cpu=stm32f4 -c opt //:f4_target
