#!/bin/bash
#SBATCH --image=docker:ddixit/fun4all:eicresearch
#SBATCH --qos=shared
#SBATCH --constraint=haswell
#SBATCH --time=1:00:00
#SBATCH --array=0-1999
shifter ./AllSi_shifter_jets.sh $SLURM_ARRAY_TASK_ID 1000
