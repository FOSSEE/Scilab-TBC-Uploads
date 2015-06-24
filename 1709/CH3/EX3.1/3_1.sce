clc
//Initialization of variables
V=1 //ft^3
m=30 //lbm
//calculations
v=V/m
vf1=0.01665
vfg1=32.38 //ft^3/lbm
x1=0.000515
uf1=169.92
ufg1=904.8
u1=uf1+x1*ufg1
vfg=0.0216
vfg2=0.4240
v2=v
x2=0.0277
uf2=538.4
ufg2=571
u2=uf2+x2*ufg2
Q=m*(u2-u1)
//results
printf("Heat transfer = %d Btu",Q)
