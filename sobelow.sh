#!/bin/sh -l

mix local.hex --force
mix escript.install github nccgroup/sobelow --force

if [ "$2" = "false" ]; then
    ~/.mix/escripts/sobelow $1
else
    ~/.mix/escripts/sobelow $1 --format sarif >> results.sarif
fi