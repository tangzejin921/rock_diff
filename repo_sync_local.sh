#!/bin/bash

repo sync \
-l \
-c \
--no-tags \
-m rockpi-release.xml \
--force-sync \
--no-clone-bundle
