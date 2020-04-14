#!/bin/sh

docker run \
       -i \
       --rm \
       -u $(ls -n deps.edn | awk '{ print $3; }') \
       -v $(pwd):/work \
       -w /work \
       -e HOME=/work \
       -e LANG=C.UTF-8 \
       clojure:openjdk-14-tools-deps \
       clojure --eval "(require 'tennis)"
