#!/bin/bash
set -e

MVN_BUILD_FLAGS="-B -V"
./mvnw verify $MVN_BUILD_FLAGS
