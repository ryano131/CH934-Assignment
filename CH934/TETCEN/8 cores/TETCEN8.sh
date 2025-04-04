#!/bin/bash
#========================================#
#SBATCH --export=ALL
#SBATCH --partition=teaching
#SBATCH --account=teaching
#SBATCH --ntasks=1 --cpus-per-task=8
#SBATCH --nodes=1
#SBATCH --time=48:00:00
#SBATCH --job-name=TETCEN8
#SBATCH --output=slurm-%j.out
module purge
module load gaussian/g16
/opt/software/scripts/job_prologue.sh
g16 TETCEN8.gjf
/opt/software/scripts/job_epilogue.sh
