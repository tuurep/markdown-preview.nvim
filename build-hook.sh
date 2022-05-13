#!/bin/bash

# For vim-plug post-update hook

yarn install
yarn build
cd app
yarn install
