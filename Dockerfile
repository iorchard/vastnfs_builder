ARG         FROM=docker.io/rockylinux/rockylinux:8.10
FROM        ${FROM}

ENV         WORKSPACE="/opt/vastnfs_build"
ENV         OUTPUT_DIR="/output"
WORKDIR     ${WORKSPACE}

COPY        scripts ${WORKSPACE}/scripts

VOLUME      ["${OUTPUT_DIR}"]

ENTRYPOINT  ["/opt/vastnfs_build/scripts/build.sh"]
