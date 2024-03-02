#!/bin/sh

# install julia kernel for jupyter
julia install_ijulia.jl

# start jupyterlab > /dev/null 2>&1 &
jupyter lab --ip=0.0.0.0 --port=8888 --allow-root --no-browser --ServerApp.token='' --ServerApp.password='' 