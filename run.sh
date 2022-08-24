#!/bin/bash

# Android SDK PATH (Linux/Ubuntu)
# export ANDROID_HOME=/home/ElaXan/Android/Sdk

# Make Release
./gradlew assembleRelease

# build https://stackoverflow.com/questions/34005713/difference-between-clean-gradlew-clean
# ./gradlew clean

# Fake Signed
# Auto Sign is good...
java -jar tool/uber-apk-signer.jar -a app/build/outputs/apk/release/app-release-unsigned.apk

# Patch mod metadata to patch proxy
# java -jar tool/lspatch.jar apk/GenshinImpact_v2.8.0_mod.apk -m app/build/outputs/apk/release/app-release-aligned-debugSigned.apk --v2
