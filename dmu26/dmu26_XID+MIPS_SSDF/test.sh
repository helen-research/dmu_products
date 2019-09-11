#!/bin/bash
#SBATCH --job-name='testjob'    ### Job Name
#SBATCH --time=12:00:00        ### WallTime
#SBATCH --nodes=1              ### Number of Nodes
#SBATCH --ntasks=1             ### Number of tasks per array job
#SBATCH --array=1-array_here           ### Array index
#SBATCH --mem-per-cpu=12G
#SBATCH --output=./log/Ajob-%j-stdout.log
#SBATCH --error=./log/Ajob-%j-stderr.log


cd /users/mc741/git_hub/dmu_products/dmu26/dmu26_XID+MIPS_SSDF
echo "Submitting SLURM job"


echo $(pwd)
path_here
echo $(pwd)

singularity exec /idia/software/containers/SF-PY3-bionic.simg python ../../XIDp_test.py 

