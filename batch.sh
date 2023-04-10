#!/bin/bash -l
#SBATCH --job-name=imageshow
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --output imageshow-job_%j.out
#SBATCH --error imageshow-job_%j.err
#SBATCH --partition=standard

# Bind your OpenMP threads
export OMP_NUM_THREADS=$SLURM_CPUS_PER_TASK

# Start my application
srun imageshow
