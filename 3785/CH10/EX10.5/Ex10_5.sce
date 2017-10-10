// Example 10_5
clc;funcprot(0);
// Given data
Q=1000;// GPM
h=100;// Head in m
g=9.807;// The acceleration due to gravity in m/s^2
// Reading values from figure 10.5
C_Q=7*10^-3;
C_h=0.116;
C_p=1.16*10^-3;
rho=1*10^3;// The density of water in kg/m^3

// Calculation
Q=Q*((3.785*10^-3)/60);// m^3/s
omega=((g*h)^(3/4)*(C_Q)^(1/2))/(Q^(1/2)*(C_h)^(3/4));// s^-1
omega_rpm=omega*(60/(2*%pi));// rpm
D=(Q/(omega*C_Q));// The diameter D in m
P=(rho*omega^3*D^5*C_p);// The power in kW
printf("\nThe pump speed=%4.0f \nDiameter,D=%0.4f m \nThe power=%2.2f kW",omega_rpm,D,P);
