clc
clear
//Initalization of variables
p2=190 //psia
p1=110 //psia
v1=2.456 
k=1.3
J=778
A2=1.2 //in^2
//calculations
v2=v1*(p2/p1)^(1/k)
dh=k/(k-1) *144/J *(p2*v1-p1*v2)
Vex=223.8*sqrt(dh)
m=A2*Vex/(144*v2)
//results
printf("Rate of flow = %.2f lb/sec",m)
