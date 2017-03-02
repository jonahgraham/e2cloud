#!/bin/sh
# Copyright (c) 2017 Kichwa Coders Ltd.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html

IMAGE_NAME="jonahkichwacoders/poky-qemu"
. $(cd "$(dirname "$0")"; pwd)/../build.include

init "$@"
build "$@"
