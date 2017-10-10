//Example 3_7
clc;clear;funcprot(0);
//Constants used
g=9.81;// The acceleration due to gravity in m/s^2

//Given values
rho_0=1040;// The density of brine in kg/m^3
h_1=0.8;// m
H=4;// m
z_0=0;
z_1=4;// z_0 & z_1 are limits of integration

//Calculation
P_1=rho_0*g*h_1/1000;// Standard  pressure determination formula in kPa
P_2=integrate('rho_0*g*(sqrt(1+(tan(3.14*z/4/H)^2)))','z',z_0,z_1);//integrant
P_2=P_2/1000;// kPa
P=P_1+P_2;
printf('The gage pressure at the bottom of gradient zone P=%0.1fkPa\n',P);
