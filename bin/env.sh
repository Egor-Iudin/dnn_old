#!/bin/bash
source /afs/cern.ch/sw/lcg/external/gcc/4.7.2/x86_64-slc5-gcc47-opt/setup.sh /afs/cern.ch/sw/lcg/contrib

source /afs/cern.ch/sw/lcg/app/releases/ROOT/5.34.10/x86_64-slc5-gcc47-opt/root//bin/thisroot.sh
export PATH=`pwd`/bin:$PATH
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/afs/cern.ch/sw/lcg/external/Boost/1.50.0_python2.7/x86_64-slc5-gcc47-opt/lib/

