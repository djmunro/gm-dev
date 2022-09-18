#!/usr/bin/env bash

pushd gm-base/ui.frontend
npm install
popd

# TODO install ui.policy package.json

pushd gm-other/ui.frontend
npm install
popd
