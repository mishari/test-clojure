#!/bin/sh

clojure --eval "(require '[tennis :refer [first-match]]) (first-match \"x.csv\")"
