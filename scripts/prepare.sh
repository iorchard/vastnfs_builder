#!/bin/bash
DOWNLOAD_DEPS=(which python3 xz)
BUILD_DEPS=(make rpm-build kernel-core gcc kernel-devel)

dnf -y install ${DOWNLOAD_DEPS[@]} ${BUILD_DEPS[@]}
