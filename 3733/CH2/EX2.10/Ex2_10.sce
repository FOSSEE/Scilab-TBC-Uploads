// Example 2_10
clc;funcprot(0);
//Given data
H=40;// Head in m
A=1.8;// Area of the reservoir in km^2
P=24;// MW
n_o=80/100;// The over all efficiency
rho_w=1000;// kg/m^3
g=9.81;// m/s^2

//Calculation
q=(P*1000*1000)/(rho_w*g*H*n_o);// m^3/sec
x=(q*3600)/(A*10^6);// m/hr
printf('\nThe rate of fall in height of reservoir=%0.3f m/hr',x);
