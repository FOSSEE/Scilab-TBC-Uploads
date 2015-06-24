//Finding resistance
//Example 15.10(pg 398)
clc
clear
rho=1.7*(10^-6)//resistivity of copper in ohm-cm
l=5//length in metres
t=0.005//thickness in m
D=0.08//external diameter in m
d=D-(2*t)//internal diameter in m
a=%pi*(D^2-d^2)/4//cross section area in cm^2
R=rho*l/a//resistance of copper tube in ohm
R1=R/(10^-4)//resistance in micro-ohm
printf('Thus the resistance of copper tube is %3.2f micro-ohm',R1)
