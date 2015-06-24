clc
clear
//Initalization of variables
v2=1180 //ft/s
etan=0.95
cp=0.24
n=1.4
p2=12
//calculations
dh=v2^2 /(etan*223.8^2)
dt=dh/cp
t2d=560 //R
t1=t2d+ etan*dt
t2=554 //R
pr=(t1/t2)^(n/(n-1))
p1=p2*pr
//results
printf("Pressure required = %.2f psia",p1)
