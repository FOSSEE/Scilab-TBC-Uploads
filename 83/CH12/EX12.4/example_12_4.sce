//Chapter 12
//Example 12.4
//page 453
//To calculate acceleration and rotor angle
clear;clc;

delta0=33.9; //initial rotor angle
H=4; //inertia constant
f=50; //frequency
Pm=1; //mechanical power input
t=0.05; //time interval
angular_acceleration=(Pm-0.694*sind(delta0))*180*f/H;
delta_change=0.5*angular_acceleration*t^2;
delta_new=delta0+delta_change;
new_angular_acceleration=(Pm-0.694*sind(delta_new))*180*f/H;

printf('\n\nInitial rotor angular acceleration = %d elect deg/s^2',angular_acceleration);
printf('\nDelta_change=%0.1f deg',delta_change);
printf('\nNew delta =delta1=%0.1f deg',delta_new);
printf('\nAngular acceleration at the end of 0.05s =%d elect deg/s^2\n\n',new_angular_acceleration);
