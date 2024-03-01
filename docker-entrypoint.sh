#!/bin/sh
echo "Julia launch attempted" >> /tmp/julia-launch.log
exec julia "$@"