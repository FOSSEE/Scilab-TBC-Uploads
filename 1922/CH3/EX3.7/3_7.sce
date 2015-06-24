clc
clear
//Initialization of variables
P=0.1*10^6 //Pa
P2=0.55*10^6 //Pa
M=28.84
R=8314.4
T1=303.1 //K
T2=316.1 //K
d1=0.154 //m
d2=0.028 //m
mass=0.25 //m^3/s
Q=2.764*10^8 //J/h
cp=29.3*10^3 
//calculations
rho1= P*M/(T1*R)
u1=mass/(%pi/4 *d1^2)
rho2= P2*M/(R*T2)
u2=u1*d1^2 *rho1/(d2^2 *rho2)
Wsd= (u2^2 - u1^2 )/2 + cp/M *(T2-T1) + Q/(mass*rho1*3600)
mdot= u1*%pi/4 *d1^2 *rho1
Ws=Wsd*mdot/745.7
//results
printf("Power input to the compressor = %d hp",Ws)
