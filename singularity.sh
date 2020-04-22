#!/bin/bash
#SBATCH --ntasks=1                      # 1 core(CPU)
#SBATCH --nodes=1                       # Use 1 node
#SBATCH --job-name=keras_test           # The name for our job
#SBATCH --mem=4G                        # Default memory per CPU is 3GB.
#SBATCH --partition=gpu                 # We want to use a node with a GPU
#SBATCH --gres=gpu:1                    # We need one GPU
#SBATCH --mail-user=yngvemoe@nmbu.no    # Email me when job is done.
#SBATCH --mail-type=ALL                 # Please e-mail me about all messages regarding this job
#SBATCH --output=keras-mnist-%A_%a.out   # The output from the file will be stored in a file with this name
#SBATCH --error=keras-mnist-%A_%a.out    # The error messages will be stored in a file with this name

# Modify the code above to suit your preferences

# Specify which modules to load (We will only load singularity since everything else is there)
module load singularity

## Run the keras-mnist.py file from the singularity container keras_test.sif with access to a GPU
singularity exec --nv keras_test.sif python keras-mnist.py