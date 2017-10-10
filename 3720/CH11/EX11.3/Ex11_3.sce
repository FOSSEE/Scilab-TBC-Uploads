//Example 11_3
clc;clear;funcprot(0);
//Assumptions
Re_cr=5*10^5;
//Properties
rho=876;//The density of engine oil at 40°C kg/m^3
nu=2.485*10^-4;//m^2/s
//Given values
V=2;// Free stream velocity in m/s
L=5;// m
b=1;//m

//Calculation
Re_L=(V*L)/nu;// The Reynolds number at the end of the plate
C_f=1.328*Re_L^(-0.5);// The average friction coefficient
A=L*b;// m^2
F_d=C_f*A*rho*(V^2/2);// N
printf('The drag force,F_d =%0.0f N\n',F_d);
