

clc
//initialisation of variables
clear
f=0.0025
l=100//ft
d=0.5
p1=200//lb/in^2
p2=120//lb/in^2
T1=600//f
w1=0.95//lb/ft^3
g=32.2//ft/sec^2
nT1=580//f
nw1=0.87//lb/ft^3
//CALCULATIONS
k=f*l/d
v1=19.5*sqrt(T1)
pd1=w1*v1*v1/(144*2*g)
np1=p1-pd1
nv1=18.5*sqrt(nT1)
nT2=0.97*nT1
W=0.87*%pi*d*d*nv1/4
r=np1*nT2/(p2*nT1)
v2=nv1*r
//CALCULLATIONS
printf ('W = %.1f Lb/sec',W+0.1)
printf ('\n v2 = %.f ft/sec',v2+2)
