#!/bin/bash

# Submit this script with: sbatch regen-fs-slurm.sh

#SBATCH --time=24:00:00          # walltime
#SBATCH --ntasks=1               # number of processor cores (tasks)
#SBATCH --nodes=1                # number of nodes
#SBATCH --cpus-per-task=1        # CPUs per task
#SBATCH -J "regen-fs"            # job name

#SBATCH -o regen-fs-slurm.%N.%j.out   # STDOUT
#SBATCH -e regen-fs-slurm.%N.%j.err   # STDERR

# LOAD MODULES, INSERT CODE, AND RUN YOUR PROGRAMS HERE
python -u -c "import PyHipp as pyh; \
pyh.FreqSpectrum(saveLevel=1, redoLevel=1);"


