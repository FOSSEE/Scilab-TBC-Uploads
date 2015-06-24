clc
//Initialization of variables
V2=2.5 //ft^3
V1=0.5 //ft^3
P=100 //psia
x1=0.5
//calculations
W=-P*144*(V2-V1)
vf1=0.01774
vfg1=4.414
v1=vf1+x1*vfg1
m=V1/v1
v2=V2/m
disp("From tables ,")
uf1=298.08
ufg1=807.1
u1=uf1+x1*ufg1
h2=1747.9
u2=h2-P*144*v2/778
Q=m*(u2-u1)
//results
printf("Amount of heat = %d Btu",Q)
//The answer for u2 is given wrong in the textbook. Please use a calculator to find it
