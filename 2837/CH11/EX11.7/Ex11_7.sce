clc
clear
//Initialization of variables
p1=40 //psia
t1=80 //F
p2=30 //psia
ar=0.5 //sq ft
v1=200 //ft/s
R=53.35
cp=0.24
g=32.17
J=778
t2=78 //F
//calculations
G=40 //lb/sq ft/sec
rho2=144*p2/(R*(t2+460))
v2=p1/rho2
//results
printf("Velocity = %d ft/s",v2)
