#!/bin/bash
#SBATCH --job-name=convolve
#SBATCH --output=%x.out
#SBATCH --cpus-per-task=4
#SBATCH --time=10:00:00
#SBATCH --mem=10GB
#SBATCH --gres=gpu:rtx8000:1

cd path/to/folder
module purge
module load cudnn/8.6.0.163-cuda11
module load cuda/11.6.2
make clean
make 2>/dev/null
make convolve
./convolve
