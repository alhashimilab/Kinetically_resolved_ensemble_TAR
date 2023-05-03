#!/bin/bash

nohup python2 $SCRIPTS_DIR/runsasCrossValidation.py 20 1_sas_output.txt 3 0 49 70 1_selected_pmatrix.txt 1_selected_mmatrix.txt & 
nohup python2 $SCRIPTS_DIR/runsasCrossValidation.py 20 2_sas_output.txt 3 0 47 69 2_selected_pmatrix.txt 2_selected_mmatrix.txt & 
nohup python2 $SCRIPTS_DIR/runsasCrossValidation.py 20 3_sas_output.txt 3 0 49 67 3_selected_pmatrix.txt 3_selected_mmatrix.txt & 
nohup python2 $SCRIPTS_DIR/runsasCrossValidation.py 20 4_sas_output.txt 3 0 50 74 4_selected_pmatrix.txt 4_selected_mmatrix.txt & 
nohup python2 $SCRIPTS_DIR/runsasCrossValidation.py 20 5_sas_output.txt 3 0 48 71 5_selected_pmatrix.txt 5_selected_mmatrix.txt & 
nohup python2 $SCRIPTS_DIR/runsasCrossValidation.py 20 6_sas_output.txt 3 0 46 71 6_selected_pmatrix.txt 6_selected_mmatrix.txt & 
nohup python2 $SCRIPTS_DIR/runsasCrossValidation.py 20 7_sas_output.txt 3 0 47 68 7_selected_pmatrix.txt 7_selected_mmatrix.txt & 
nohup python2 $SCRIPTS_DIR/runsasCrossValidation.py 20 8_sas_output.txt 3 0 48 71 8_selected_pmatrix.txt 8_selected_mmatrix.txt & 
nohup python2 $SCRIPTS_DIR/runsasCrossValidation.py 20 9_sas_output.txt 3 0 47 70 9_selected_pmatrix.txt 9_selected_mmatrix.txt & 
nohup python2 $SCRIPTS_DIR/runsasCrossValidation.py 20 10_sas_output.txt 3 0 48 70 10_selected_pmatrix.txt 10_selected_mmatrix.txt & 
