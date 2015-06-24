//Pg 6.5,ex6.8
clc;
V=250 //Terminal voltage
Il=450 //Load current
Rf=50 //Field resistance in ohms
Ra=0.05 //Armature resistance in ohms
P=4 //Number of poles
phi=0.05 //Flux per pole in Wb
If=V/Rf
printf("\n If=%.0f A \n",If)
Ia=Il+If
printf("\n Ia=%.0f A \n",Ia)
Eg=V+(Ia*Ra)
printf("\n Eg=%.2f V \n",Eg)
n=120 //Number of slots in armature
cpp=4 //Conductors per slot
Z=n*cpp //Total number of conductors on armature
A=P //For lap wound generator
N=(Eg*60*A)/(phi*Z*P)
printf("\n N=%.0f rpm \n",N)


