#!/bin/bash

# first job called from the day directory
# creates RPLParallel, Unity, and EDFSplit objects, and
# calls aligning_objects and raycast
sbatch /data/src/PyHipp/myrplparallel-slurm.sh

# second set of jobs called from the day directory
sbatch /data/src/PyHipp/myrs1-slurm.sh
sbatch /data/src/PyHipp/myrs2-slurm.sh
sbatch /data/src/PyHipp/myrs3-slurm.sh
sbatch /data/src/PyHipp/myrs4-slurm.sh
