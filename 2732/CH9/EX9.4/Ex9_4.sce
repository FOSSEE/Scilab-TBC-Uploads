clc
//initialization of variables
clear
t=280 //kg/cm^2
c=840 //kg/cm^2
xbar=7.5 //cm from AB
A=210 //cm^2
// calculations
e=50+xbar //cm
Iyy=7433 //cm^2
k=(1/210+e*xbar/Iyy)
P=t/k
k1=(-1/210+e*(xbar+5)/Iyy)
P1=c/k1
P_safe=min(P1,P)
// results
printf('The safe load is %d kg',P_safe)
