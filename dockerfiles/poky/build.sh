#!/bin/sh
# Copyright (c) 2017 Kichwa Coders Ltd.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html

IMAGE_NAME="jonahkichwacoders/poky"
. $(cd "$(dirname "$0")"; pwd)/../build.include

POKY_SH=poky-glibc-x86_64-core-image-weston-sdk-cortexa15hf-vfp-neon-toolchain-2.0.1.sh

BUILD_POKY_SH=/scratch/che/yocto/work/build/tmp/deploy/sdk/poky-glibc-x86_64-core-image-weston-sdk-cortexa15hf-vfp-neon-toolchain-2.0.1.sh

if [ -f ${BUILD_POKY_SH} ]; then
  if [ -f "${POKY_SH}" ]; then
    rm ${POKY_SH}
  fi
  ln ${BUILD_POKY_SH} ${POKY_SH}
fi

if [ ! -f ${POKY_SH} ]; then
  echo "${ERRO}poky install script is missing. Set paths in ${0}"
  exit 2
fi


init "$@"
build "$@"
