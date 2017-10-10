//Example 11_1
clc;clear;funcprot(0);
//Properties
rho=0.07489;//The density of air in lbm/ft^3
//Given values
P_atm=1;// atm
T=70;// F
F_d=68;// Force in lbf
V=60*1.467;// ft/s^2
A=22.26;// ft^2

//Calculation
C_d=(2*F_d*(32.2))/(rho*A*V^2);//The drag coefficient of the car
printf('The drag coefficient of the car ,C_d=%0.2f \n',C_d);
