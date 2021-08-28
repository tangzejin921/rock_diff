#!/bin/bash

repo init \
--depth=1 \
-u https://github.com/radxa/manifests.git \
-b rockpi-box-9.0 \
-m rockpi-release.xml \
-p auto \
--no-clone-bundle
