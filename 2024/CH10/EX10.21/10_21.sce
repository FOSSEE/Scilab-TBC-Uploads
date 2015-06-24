clc
//Initialization of variables
t1=343.3 //R
t2=766.8 //R
n1=0.396 //mol
n2=0.604 //mol
V=8.518 //ft^3
p1=45.8 //atm
p2=36 //atm
R0=0.73
T=920 //R
//calculations
tcd=n1*t1+n2*t2
pcd=n1*p1+n2*p2
Tr=T/tcd
Vr=pcd*V/(R0*tcd)
Z=0.87
p=Z*R0*T/V
//results
printf("Pressure = %.1f atm",p)
