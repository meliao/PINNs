#!/bin/bash

#SBATCH --job-name=run_Burgers
#SBATCH --time=4:00:00
#SBATCH --partition=contrib-gpu
#SBATCH --output=logs/run_Burgers.out
#SBATCH --error=logs/run_Burgers.err


mkdir -p ~/projects/PINNs/figures
mkdir -p ~/projects/PINNs/tables

source ~/conda_init.sh

conda activate emulators_tf115

cd ~/projects/PINNs/appendix/continuous_time_identification\ \(Burgers\)/

python Burgers.py
