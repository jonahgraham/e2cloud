#!/bin/bash
# Copyright (c) 2016-2017 Codenvy, S.A.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html



pre_init() {
  # This must be incremented when BASE is incremented by an API developer
  CHE_CLI_API_VERSION=2

  CHE_PRODUCT_NAME="E2CLOUD"
  CHE_MINI_PRODUCT_NAME="e2cloud"
  CHE_FORMAL_PRODUCT_NAME="e2cloud"
  CHE_ASSEMBLY_IN_REPO_MODULE_NAME="assembly/assembly-main"
  CHE_ASSEMBLY_IN_REPO="${CHE_ASSEMBLY_IN_REPO_MODULE_NAME}/target/e2cloud-ide-*/e2cloud-ide-*"
  CHE_SERVER_CONTAINER_NAME="e2cloud"
  CHE_IMAGE_FULLNAME="codenvy/e2cloud-cli"
  DEFAULT_E2CLOUD_PORT=8080
  DEFAULT_CHE_PORT=8080

  E2CLOUD_PORT=${E2CLOUD_PORT:-${DEFAULT_E2CLOUD_PORT}}
  CHE_PORT=${E2CLOUD_PORT}
  CHE_MIN_RAM=1.5
  CHE_MIN_DISK=100
  CHE_COMPOSE_PROJECT_NAME=$CHE_MINI_PRODUCT_NAME


  ADDITIONAL_MANDATORY_PARAMETERS=""
  ADDITIONAL_OPTIONAL_DOCKER_PARAMETERS="
  -e E2CLOUD_HOST=<YOUR_HOST>            IP address or hostname where e2cloud will serve its users
  -e E2CLOUD_PORT=<YOUR_PORT>            Port where che will bind itself to
  -e E2CLOUD_CONTAINER=<YOUR_NAME>       Name for the che container"
  ADDITIONAL_OPTIONAL_DOCKER_MOUNTS=""
  ADDITIONAL_COMMANDS=""
  ADDITIONAL_GLOBAL_OPTIONS=""
}
