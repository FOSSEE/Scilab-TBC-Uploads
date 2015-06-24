clc
clear
//Initialization of variables
h=2 //Btu/hr ft^2 F
delta=1/6
t=125 //F
t0=100 //F
ti=350 //F
k=0.167 //Btu/hr ft F
rho=80 //lbm/ft^3
c=0.4 //Btu/lbm F
//calculations
Bi=h*delta/k
tr=(t-t0)/(ti-t0)
tau=1.5*delta^2 *rho*c/k
tr2=0.21
tc=tr2*(ti-t0) + t0
//results
printf("Cooling time = %.2f hr",tau)
printf("\n Center temperature = %d F",tc)
