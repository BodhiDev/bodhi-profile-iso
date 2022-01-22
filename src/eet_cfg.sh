#!/bin/bash

for f in ./*.src; do
    cfg="$(basename "$f" .src).cfg"
    echo $cfg
done
