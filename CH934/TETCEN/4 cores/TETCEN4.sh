#!/bin/bash
#========================================#
#SBATCH --export=ALL
#SBATCH --partition=teaching
#SBATCH --account=teaching
#SBATCH --ntasks=1 --cpus-per-task=4
#SBATCH --nodes=1
#SBATCH --time=48:00:00
#SBATCH --job-name=TETCEN4
#SBATCH --output=slurm-%j.out
module purge
module load gaussian/g16
/opt/software/scripts/job_prologue.sh
g16 TETCEN4.gjf
/opt/software/scripts/job_epilogue.sh
