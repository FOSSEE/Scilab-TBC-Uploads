//Example 5_1
clc;clear;funcprot(0);
// Given values
V=10; // Volume of water in gallon
dt=50;// Time in seconds
rho=1;//The density of water in kg/L
r_e=0.4;// Radius of  nozzle at exit in cm

// Calculation (a)
v=V/dt; // Volume flow rate in L/s
v=v*3.7854;// Convert gal into L
printf('(a)The volume flow rate of water,v=%0.3f L/s\n',v);
m=rho*v;// Mass flow rate of water in kg/s
printf('The mass flow rate of water,m=%0.3f kg/s\n',m);

// Calculation (b)
A_e=%pi*r_e^2;// The cross sectional area of nozzle at exit in cm^2
V_e=v/A_e;
V_e=(V_e*10000/1000);// Convert to m/s
printf('(b)The average velocity of water at the nozzle exit,V_e=%0.1f m/s\n',V_e);
