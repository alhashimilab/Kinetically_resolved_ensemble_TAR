#!/bin/bash

pdb_dir="pdb"
pales_dir="pales"
pales_indir="/mnt/d4_new/rohit/PALES/inputs"

for elongation in "E0" "EI22" "EII3" "EII13"
do
    python3 $SCRIPTS_DIR/run-pales.py $pdb_dir/$elongation $pales_dir/$elongation $pales_indir/${elongation}-wt-TAR.pales.input &
done
