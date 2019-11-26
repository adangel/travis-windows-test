#!/bin/bash
set -e

ps -W | sort | tee ps-before.txt

mkdir -p "$HOME/.gpg"
gpg --batch --import gpg-key-pub-sec.asc


MVN_BUILD_FLAGS="-B -V"
./mvnw verify $MVN_BUILD_FLAGS

ps -W | sort | tee ps-after.txt

diff -ub ps-before.txt ps-after.txt
