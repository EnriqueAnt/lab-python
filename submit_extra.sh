#!/bin/bash

#SBATCH -p hpc-bio-pascal
#SBATCH --chdir=/home/alumno10/lab-python/lab-python/
#SBATCH -J submit_extra
#SBATCH --output=python-extra-alumno10-%j.out
#SBATCH --nodes=1
#SBATCH --ntasks=1

module load anaconda/2023.03

# Ejecutar el notebook de Python con el nuºmero de elementos pasado como argumento
echo "Ejecutando notebook con 10^7 elementos..."
ipython pi-solution-alumno10.ipynb --value 10000000

echo "Ejecutando notebook con 108 elementos..."
ipython pi-solution-alumno10.ipynb --value 100000000


echo "Finalizado"

