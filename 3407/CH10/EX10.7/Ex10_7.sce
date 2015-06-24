clear;
clc;
funcprot(0);

//given data
//data from Exampla 10.5
Z = 3;//number of blades
D = 30;//rotor diameter in m
J = 5.0;//tip-speed ratio
l = 1.0;//blade chord in m
beta = 2;//pitch angle in deg
omega = 2.5;//in rad/s

rho = 1.2;//density in kg/m^3
cx1 = 7.5;//in m/s
sum_var1 = 6.9682;//from Table 10.3
sum_var2 = 47.509*10^-3;//from Table 10.4

//Calculations
X = sum_var1*0.5*rho*Z*l*0.5*D*cx1^2;
tau = sum_var2*0.5*rho*Z*l*(omega^2)*(0.5*D)^4;
P = tau*omega;
A2 = 0.25*%pi*D^2;
P0 = 0.5*rho*A2*cx1^3;
Cp = P/P0;
zeta = (27/16)*Cp;

//Results
printf('The total axial force = %d N.',X);
printf('\n The torque = %.3f *10^3 Nm.',tau/1000);
printf('\n The power developed = %.3f kW.',P/1000);
printf('\n The power coefficient = %.3f',Cp);
printf('\n The relative power coefficient = %.3f',zeta);
