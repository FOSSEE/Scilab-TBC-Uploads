clc
//initialisation of variables
d=2.15//in^2
a=0.98//dry
p=100//lb/in^2
p1=11000//lb
P=0.58*p//lb/in^2
H=24//C.H.U/lb
D=0.947//lb
s=7.407//ft^3
//CALCULATION
V=sqrt(2*32.2*1400*H)//ft/sec
V1=V*(d/144)//ft^3
T=V1/(s*D)//lb
A=(p1/3600)//lb
C=A/T//lb
//RESULTS
printf('the coefficient of discharge for the nozzles=% f lb',C)
