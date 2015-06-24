//Pg6.6,Ex6.2
clc;
P=6 //Number of poles
A=2 //No of parallel paths
Z=300 //Number of conductors
N=1000 //Angular velocity
Eg=400 //Generated Emf
phi=(60*Eg*A)/(Z*N*P)
printf("\n phi=%.4f Wb\n",phi)
