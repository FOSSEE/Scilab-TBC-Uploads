clc
clear
//Initialization of variables
y=13
x=12
M2=18
M=170
p=0.4593
vfg=694.9
J=778.2
m=9*18
u1=-2363996 //Btu
//calculations
z=y*M2/M
hfg=1050.4 //Btu/lbm
ufg= hfg- p*vfg*144/J
dU=ufg*m 
Lhv=u1+dU
//results
printf("Lower heating value = %d Btu/lbm",Lhv)
