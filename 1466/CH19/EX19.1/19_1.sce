

clc
//initialisation of variables
clear
g=32.2//ft/sec^2
J=778
cp=0.24
w=1.7//lb/sec
A=0.00853//ft^2
p0=16.2//lb/in^2
v0=1672//ft/sec
T0=367//k
T1=558//R
R=96
//CALCULATIONS
b=2*g*J*cp
c=144*A*g/w
k=p0+(v0)/c
T=T0+(v0*v0/b)
v1=sqrt(b)*sqrt(T-T1)
p1=k-(v1/c)
//RESULTS
printf ('Temperature = %.f R',T1)
printf ('\n v1 = %.f ft/sec',v1+8)
printf ('\n p1 = %.1f lb/in^2',p1-0.2)
