// Example 5.7, page no-313
clear
clc
//1kg/m^2=10 meters water head
g=9.81
h=20
v=sqrt(2*g*h)
d=300*10^-3
A=(3.14*d^2)/4
A=floor(A*1000)
A=A/1000
Q=A*v
printf("Q=%.3f m^3/sec",Q)
