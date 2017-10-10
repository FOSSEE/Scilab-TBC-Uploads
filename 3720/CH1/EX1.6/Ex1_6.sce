// Example 1_6
clc;clear;funcprot(0);
//Given values
dv=1.1//The volume of water collected in gal
dt=45.62;// Time period in s

//Calculation
V=dv/dt;// gal/s
V=V*(3.785*10^-3*60);// m^3/min
printf('The volume flow rate of water through the hose,V=%0.1e m^3/min\n',V);
