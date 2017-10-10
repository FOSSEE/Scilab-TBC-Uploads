//Find the braking torque applied to the drum
clc
//given
dia=12//in
r=dia/2
CQ=7//in
OC=6//in
OH=15//in
u=0.3
P=100//lb
phi=atan(u)
x=r*sin(phi)//in inches;radius of friction circle
a=5.82//from figure
Tb=P*OH*x/a//braking torque
printf("\nThe braking torque of the drum Tb= %.2f lb in\n",Tb)
