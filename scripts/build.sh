#!/bin/bash

set -exo pipefail

VER=${1:-4.0.32}
DOWNLOAD_URL='https://vast-nfs.s3.amazonaws.com/download.sh'

$(dirname $0)/prepare.sh

curl -sSf ${DOWNLOAD_URL} | bash -s -- --version ${VER}
tar xJf vastnfs-${VER}.tar.xz
pushd vastnfs-${VER}
  ./build-rpm.sh
  cp rpm-dist/*.rpm ${OUTPUT_DIR}/
popd
ls -lh ${OUTPUT_DIR}
