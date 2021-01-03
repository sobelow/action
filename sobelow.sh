#!/bin/sh -l

REPORT="--format sarif >> results.sarif"
if [ "$2" = "false" ]; then
    REPORT=""
fi

mix local.hex --force
mix escript.install github nccgroup/sobelow --force

~/.mix/escripts/sobelow $1 $REPORT