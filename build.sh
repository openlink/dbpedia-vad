#!/bin/bash
#
#  Build script for DBpedia VAD
#

export VERSION=$(./gen_version.sh)
export FCT_STICKER=dbpedia_sticker.xml
export NEED_VERSION=07.20.3226

python vadpacker/vadpacker.py \
    -o dbpedia_dav.vad \
    --var="VERSION=$VERSION" \
    --var="BASE_PATH=/DAV/VAD" \
    --var="TYPE=dav" \
    --var="ISDAV=1" \
    --var="NEED_VERSION=$NEED_VERSION" \
    $FCT_STICKER

ls -l dbpedia_dav.vad
