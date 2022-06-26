
#!/bin/bash	  
#SBATCH -J BAs		 # Job Name
#SBATCH -o BAs.o%j	 # Name of the error and output files (%j appends the jobID)
#SBATCH -N 1             # Requests nodes
#SBATCH -n 32	         # Requests number of tasks, in multiples of 64 
#SBATCH -p normal	 # Queue name: development (max 2 hr walltime) or normal
#SBATCH -t 00:30:00	 # Run time (hh:mm:ss) 
#SBATCH -A TG-MPS150006 

module load intel/19.1.1
module load impi/19.0.7
module load mvapich2/2.3.6
module load qe/7.0
