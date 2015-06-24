clc
//Initialization of variables
y=13
x=12
M2=18
M=170
p=0.4593
vfg=694.9
J=778.2
m=1.375
U=-19650 //Btu/lbm fuel
//calculations
z=y*M2/M
hfg=1050.4 //Btu/lbm
ufg= hfg- p*vfg*144/J
dU=ufg*m //Btu/lbm
Ud=dU+U
//results
printf("Lower heating value = %d Btu/lbm",Ud)
