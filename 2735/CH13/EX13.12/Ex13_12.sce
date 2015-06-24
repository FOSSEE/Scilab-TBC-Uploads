clc
clear
//Initialization of variables
k=1.31
p1=7200 //lbf/ft^2
v1=8.515 //ft^3/lbm
pr=0.6
m1=0.574
T1=741 //R
//calculations
V2rev=8.02*sqrt(k/(k-1) *p1*v1*(1- (pr)^((k-1)/k)))
v2=v1*(1/pr)^(1/k)
m=%pi/4 *1/144 *V2rev/v2
C=m/m1
T2=T1*(0.887)
t=250+460 //R
dt=t-T2
//results
printf("Mass flow rate = %.3f lbm/sec",m)
printf("\n Meta stable under cooling = %d F",dt)
