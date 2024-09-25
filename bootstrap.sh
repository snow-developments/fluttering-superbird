#!/bin/env bash

# https://github.com/flutter/engine/blob/main/docs/contributing/Setting-up-the-Engine-development-environment.md#getting-the-source
# TODO: Cache all this engine crap (in excess of 30GB, taking tens-of-minutes... 🙄). See https://docs.github.com/en/codespaces/prebuilding-your-codespaces/about-github-codespaces-prebuilds
cd ..
mkdir -p engine
cd engine
fetch flutter
git -C src/flutter remote rename origin upstream
gclient sync
