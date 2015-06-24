clc
//Initialization of variables
ken=0.5
kex=0.2
f=0.0018
l=10 //ft
dia=3 //in
z1=8
z2=5
//calculations
x1=ken+kex+f*l*12/dia
t=35.5*2/3 *(z1^(3/2) - z2^(3/2))
//results
printf("Time reqired = %d s",t)
