//Example 2_9
clc;funcprot(0);
// Given values
A=250*10^6;// Catchment area in m^2
Ar=1.25;// Annual rainfall in m
H=60;// Average head in m
P_w=70;// Percentage of water in the dam
n_t=0.9// Turbine efficiency
n_g=0.95// Generator efficiency
g=9.81;// The acceleration due to gravity in m/s^2

//Calculation
V=(A*Ar*(P_w/100));// Total water used for power generation in m^3
printf('Total water used for power generation=%0.3e m^3\n',V);
q=(V/(365*24*3600));
printf('Water flow rate =%0.2f m^3/sec\n',q);
P=((q*1000*9.81*60)/1000)*n_t*n_g*(1/1000);
printf('The capacity of the power plant,P=%0.1f MW\n',P);
// The answer vary due to round off error
