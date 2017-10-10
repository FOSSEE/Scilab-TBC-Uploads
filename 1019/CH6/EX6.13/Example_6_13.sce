//Example 6.13
clear;
clc;

//Given
T=298;//temperature in K
P=1;//pressure in atm
I=1.9373;//moment of inertia in 10^(-46) kg m^2
R=8.314;//gas constant in J K^-1 mol^-1
h=6.626;//plancks constant in 10^(34) Js
k=1.38;//in (10^(-23)) J K^-1

//To determine the rotational contributions to entropy and free energy
Qr=(8*(%pi^2)*I*k)/(20*(h^2));//rotational transition function
Sr=R*(1+log(Qr*T));//rotational contributions to entropy in J K^-1 mol^-1
Gr=((R*T)-(T*Sr))*0.001;//rotational contributions to free energy in J mol^-1
mprintf('rotational contributions to entropy = %f J K^-1 mol^-1',Sr);
mprintf('\n rotational contributions to free energy = %f kJ mol^-1',Gr);
//end