#!/bin/sh -l

REPORT=""
if [[ $2 == "true" ]]; then
    REPORT=">> results.sarif"
fi

mix local.hex --force
mix escript.install github nccgroup/sobelow --force

~/.mix/escripts/sobelow $1 --format sarif $REPORT