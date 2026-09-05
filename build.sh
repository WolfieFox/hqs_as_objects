#!/bin/bash

echo "Compiling set"
# Assemble the output using Roadie
../roadie/roadie.exe set.json

echo "Compile NML"
# NML (note: requires JGR's fork)
../jgr-nml/nmlc.exe --no-palette-validation -p DEFAULT -c hq_as_objects.nml

# Build TAR
echo "Building TAR"
mkdir -p hq_as_objects
mv *.grf hq_as_objects
cp grf_readme/* hq_as_objects
tar -c hq_as_objects > hq_as_objects.tar
