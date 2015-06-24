clc
clear
//Initialization of variables
t=212+460 //R
v=0.193 //ft^3/lbm
M=44
R=0.73
//calculations
tc=87.9+460 //F
zc=0.275
vc=1.51 //ft^3/mol
tr=t/tc
vr=v*M/vc
vrd=vr*zc
z=0.88
p=z*R*t/(M*v)
//results
printf("Pressure = %.1f atm",p)
