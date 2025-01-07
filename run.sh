#!/bin/bash
set -e 

# environment variable file
ENVFILE=".env"

mkdir -p output

function build() {
  VER=${1:-8.10}
  SRC_VER=${2:-2.1.0}

  podman build -t docker.io/jijisa/vastnfs-builder .
  podman run --privileged -v $(pwd)/output:/output --rm \
    docker.io/jijisa/vastnfs-builder ${VER} ${SRC_VER}
}

function run() {
  podman build -t docker.io/jijisa/vastnfs-builder .
  podman run -it --privileged -v $(pwd)/output:/output --rm \
    --entrypoint=/bin/bash \
    docker.io/jijisa/vastnfs-builder
}
function USAGE() {
  echo "USAGE: $0 [-h|-b|-r] [options]" 1>&2
  echo
  echo " -h --help                   Display this help message."
  echo " -b --build [options]        Build burrito iso."
  echo " -r --run [options]          Run and go into the container."
  echo
  echo "ex) $0 --build"
  echo
}
if [ $# -lt 1 ]; then
  USAGE
  exit 1
fi

OPT=$1
shift
while true
do
  case "$OPT" in
    -h | --help)
      USAGE
      exit 0
      ;;
    -b | --build)
      build
      break
      ;;
    -r | --run)
      run
      break
      ;;
    *)
      echo Error: unknown option: "$OPT" 1>&2
      echo " "
      USAGE
      exit 1
      ;;
  esac
done
