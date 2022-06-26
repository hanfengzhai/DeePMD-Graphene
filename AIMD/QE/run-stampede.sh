
#!/bin/bash	  
#SBATCH -J hz_graphene		 # Job Name
#SBATCH -o graphene.o%j	 # Name of the error and output files (%j appends the jobID)
#SBATCH -N 5             # Requests nodes
#SBATCH -n 300	         # Requests number of tasks, in multiples of 64 
#SBATCH -p normal	 # Queue name: development (max 2 hr walltime) or normal
#SBATCH -t 48:00:00	 # Run time (hh:mm:ss) 
#SBATCH -A TG-MPS150006 

module load intel/19.1.1
module load impi/19.0.7
module load mvapich2/2.3.6
module load qe/7.0

cp.x < graphene.gs.in > graphene.gs.out
cp.x < graphene.in > graphene
