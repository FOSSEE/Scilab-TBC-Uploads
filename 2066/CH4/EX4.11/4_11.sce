clc
clear
//Initialization of variables
gam=62.4
ds=12 //in
dd=10 //in
Q=4 //ft^3/s
pd=40 //psia
ps=-6 //psia
zd=5 //ft
zs=0
g=32.2 //ft/s^2
//calculations
vs=Q/(%pi/4 *(ds/12)^2)
vd=Q/(%pi/4 *(dd/12)^2)
emp = (pd-ps)*144/gam + zd-zs + (vd^2 - vs^2)/(2*g)
hpp=emp*Q*gam/550
//results
printf("Horsepower input of the test pump = %.1f hp",hpp)
