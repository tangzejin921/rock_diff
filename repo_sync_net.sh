#!/bin/bash

repo sync \
-n \
-c \
--no-tags \
-m rockpi-release.xml \
--force-sync \
--no-clone-bundle
