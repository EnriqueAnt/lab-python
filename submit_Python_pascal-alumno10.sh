#!/bin/bash

#SBATCH -p hpc-bio-pascal                         # Cola de trabajo (cambiado de hpc-bio-pacioli a pascal)
#SBATCH --chdir=/home/alumno10/lab-python  # Directorio de trabajo (ajusta si es necesario)
#SBATCH -J submit_Python_pascal-alumno10.sh  # Nombre del trabajo
#SBATCH --output=python-job-output.out    # Archivo de salida
#SBATCH --mail-type=NONE                  # No recibir correos
#SBATCH --mail-user=enriqueantonio.hernandezs@um.es  # Tu correo (ajústalo si es necesario)

# Cargar el entorno de Python (ajusta la versión según sea necesario)
module load python/3.x.x   # Ejemplo de cómo cargar el entorno de Python

# Ejecutar el notebook de Python con el número de elementos pasado como argumento
echo "Ejecutando notebook con 107 elementos..."
ipython reduc-operation-login.ipynb --value 107

echo "Ejecutando notebook con 108 elementos..."
ipython reduc-operation-login.ipynb --value 108

echo "Finalizado"

