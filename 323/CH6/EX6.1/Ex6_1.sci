//Chapter6,Pg6.6,Ex6.1
clc;
P=6 //Number of poles in armature
phi=0.018 //Flux per pole in Wb
N=600 //Angular velocity in rpm
Z=840 //Number of conductors
A=P //For lap wound armature, number of parallel paths=number of poles
Eg=(phi*Z*N*P)/(60*A)
printf("\n Eg=%.1f V \n",Eg)
