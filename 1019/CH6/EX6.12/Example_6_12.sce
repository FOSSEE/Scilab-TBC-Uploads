//Example 6.12
clear;
clc;

//Given
T=300;//temperature in K
s=2;//symmetry number
I=4.59;//moment of inertia in 10^(-47) kg m^2
h=6.626;//plancks constant in 10^(34) Js
k=1.38;//in (10^(-23)) J K^-1

//To determine the rotational partition function
Qr=((8*(%pi^2)*I*k*T)/(s*(h^2)))*0.001;//rotational partition function
mprintf('rotational partition function,qr = %f',Qr);
//end