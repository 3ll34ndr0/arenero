#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/lean/vivado/tp/prbs31/vivado/prbs31/run1/.autopilot/db/a.g.bc ${1+"$@"}
