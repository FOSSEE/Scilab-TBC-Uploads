//Example 14_7
clc;clear;
// Given values
D_p=34.0;// The overall diameter of the propeller in cm 
D_h=5.5;// The hub assembly diameter in cm
n=1700; // rpm
alpha=14; // The angle of attack in degree
V_wind=13.4;// m/s

// Calculation
r=D_h/(2*100);// Radius in m
omega=(2*%pi*n)/60;
phi=atand((V_wind/(omega*r)));
theta_1=alpha+phi;// Pitch angle at arbitrary radius r in degree
printf('The Pitch angle at arbitrary radius,theta=%0.1f degree\n',theta_1);
r_1=D_p/(2*100);
phi_1=atand((V_wind/(omega*r_1)));
theta_2=alpha+phi_1;
printf('The Pitch angle at tip,theta=%0.1f degree\n',theta_2);
