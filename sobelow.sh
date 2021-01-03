#!/bin/sh -l

mix local.hex --force
mix escript.install github nccgroup/sobelow --force

~/.mix/escripts/sobelow $1 --format sarif >> results.sarif