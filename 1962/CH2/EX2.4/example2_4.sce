//example 2.4
//page 54
clc; funcprot(0);
//initialisation of variable
P0=570;
P1=750;
R=287;
T0=-5+273;//temperature
n=1.2345;
k=(n-1)/n;
p=1/k;
y=-R*T0/9.81/k*(1-(P1/P0)^(0.19));
disp(y,"height of the mountain(m)=");
clear
