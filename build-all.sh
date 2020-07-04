#!/bin/sh

set -xe

BASEPATH=`pwd`
mkdir -p ${BASEPATH}/build/{pkg,srcpkg,srccache}

for FILE in *; do
  [ ! -d "${FILE}" ] && continue
  [ "${FILE}" = "build" ] && continue
  [ ! -f "${FILE}/build.sh" ] && continue

  docker run --init --rm -ti -v ${BASEPATH}/${FILE}:/work/src:ro -v ${BASEPATH}/build/pkg:/work/pkg -v ${BASEPATH}/build/srccache:/work/srccache -v ${BASEPATH}/build/srcpkg:/work/srcpkg --tmpfs "/work/build,exec" ${IMAGE} sh build.sh
done
