#!/bin/sh
#SBATCH -J dmd
#SBATCH -p compute
#SBATCH -o deepmd%j.out    
#SBATCH -N 1
#SBATCH -n 60
#SBATCH -t 20:00:00
#SBATCH -A TG-BIO210063       # Project/Allocation name (req'd if you have more than 1)
#SBATCH --mail-user=hz253@cornell.edu


cp.x < graphene.gs.in > graphene.gs.out
cp.x < graphene.in > graphene
