#!/bin/bash

#SBATCH --job-name=run_systematic
#SBATCH --time=24:00:00
#SBATCH --partition=contrib-gpu-long
#SBATCH --output=logs/run_systematic.out
#SBATCH --error=logs/run_systematic.err


mkdir -p ~/projects/PINNs/figures
mkdir -p ~/projects/PINNs/tables

source ~/conda_init.sh

conda activate emulators_tf115


cd ~/projects/PINNs/appendix/continuous_time_identification\ \(Burgers\)/

python Burgers_systematic.py
