//Pg6.7,Ex6.3
clc;
n=80 //Number of slots on armature
cps=10 //number of conductors per slot
Eg=400 //Generated EMF
N=1000 //Angular velocity
//part(i)
ctotal=n*cps
phi=(Eg*60)/(N*ctotal) //Since A=P
printf("\n phi=%.2f Wb \n",phi)
//part(ii)
Eg=220
N=(Eg*60)/(phi*ctotal)
printf("\n N=%.0f rpm \n",N)