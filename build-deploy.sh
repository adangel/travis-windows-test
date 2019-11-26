#!/bin/bash
set -e

mkdir -p "$HOME/.gpg"
gpg --batch --import gpg-key-pub-sec.asc


MVN_BUILD_FLAGS="-B -V"
./mvnw verify $MVN_BUILD_FLAGS
