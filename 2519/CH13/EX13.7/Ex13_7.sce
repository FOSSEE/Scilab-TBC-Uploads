clc
clear
//Initialization of variables
p0=50 //psia
T0=520 //R
rho0=0.259 //lbm/ft^3
p2=10 //psia
mf=1 //lbm
//calculations
disp("From table B-17,")
pr=0.528
Tr=0.833
rhor=0.634
ps=pr*p0
Ts=Tr*T0
rhos=rho0*rhor
Vs=49.1*sqrt(Ts)
As=mf/(Vs*rhos)
p2r=p2/p0
M2=1.71
V2=1.487*Vs
T2=0.632*Ts
A2=As*1.35
rho2=rhos*0.317
//results
printf("Area of throat = %.5f ft^2",As)
printf("\n Area of exit = %.5f ft^2",A2)
