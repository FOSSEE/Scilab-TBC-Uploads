clc
//Initialization of variables
V1=1.735*10^-4 //ft^3
v1=0.016080 //ft^3/lbm
h1=70.61 //B/lbm
P1=100 //psia
V2=1 //ft^3
//calculations
u1=h1-P1*v1*144/778
m=V1/v1
v2=V2/m
vf2=0.01613
vfg2=350.3
x2=(v2-vf2)/vfg2
hf2=67.97
hfg2=1037.2
h2=hf2+x2*hfg2
P2=0.9492
u2=h2- P2*144*v2/778
Q=m*(u2-u1)
//results
printf("Enthalpy change = %.2f Btu",Q)
