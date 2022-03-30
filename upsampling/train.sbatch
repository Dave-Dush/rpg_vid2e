#!/bin/bash
#SBATCH --job-name="Video Upsampling V2E"
#SBATCH --nodes=1
#SBATCH --cpus-per-task=1
#SBATCH --gres=gpu:1,VRAM:12G
#SBATCH --mem=2G
#SBATCH --time=0:45:00
#SBATCH --mail-type=ALL
#SBATCH --output=/storage/slurm/logs/dave/slurm-%j.out
#SBATCH --error=/storage/slurm/logs/dave/slurm-%j.out
srun python upsample.py --input_dir=~/storage/local/dave/slowmo --output_dir=~/storage/local/dave/v2e/slowmo --device=cuda:0