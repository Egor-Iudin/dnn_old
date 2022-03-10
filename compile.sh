rm libCROOT.a ;

 gcc                                -O -pthread -m64 -I/afs/cern.ch/sw/lcg/app/releases/ROOT/5.34.10/x86_64-slc5-gcc47-opt/root/include   -c CTGraph.cxx -o CTGraph.o;
 ar -cvq libCROOT.a  CTGraph.o;
gcc                                -L/afs/cern.ch/sw/lcg/app/releases/ROOT/5.34.10/x86_64-slc5-gcc47-opt/root/lib -lCore -lCint -lRIO -lNet -lHist -lGraf -lGraf3d -lGpad -lTree -lRint -lPostscript -lMatrix -lPhysics -lMathCore -lThread -pthread -lm -ldl -rdynamic       printError.cxx libCROOT.a  libCROOT.a                   -lm -o printError;




