#!/bin/bash
set -e

rm -rf build
function build {
    for f in $*; do
        dir=$(dirname $f)
        mkdir -p build/$dir
        cp $f build/$f
    done
}

build index.html

build js/reveal.js
build lib/js/head.min.js

build css/reveal.css
build css/theme/*.css
build css/print/*.css
build lib/css/zenburn.css

build lib/font/league-gothic/*
build lib/font/source-sans-pro/*

build plugin/notes/*
build plugin/highlight/*
