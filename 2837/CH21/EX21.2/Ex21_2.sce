clc
clear
//Initalization of variables
h1=1205.8 //Btu/lb
s2=1.5594
sf=1.5948
sfg=1.1117
hf=1188.9 //Btu/lb
hfg=883.2 //Btu/lb
vf=4.049
vfg=vf-0.018
k=1.3
J=778
A2=1.2 //in^2
//calculations
x2=-(s2-sf)/sfg
h2=hf-x2*hfg
v2=vf-x2*vfg
dh=h1-h2
Vex=223.8*sqrt(dh)
m=A2*Vex/(144*v2)
//results
printf("Rate of flow = %.2f lb/sec",m)

