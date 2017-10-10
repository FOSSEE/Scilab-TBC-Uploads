//Example 5_2
clc;clear;funcprot(0);
// Given values
h_0=4;
h_2=2;// Corresponding heights in ft
D_tank=3*12;
D_jet=0.5;// Corresponding diameters in inch
g=32.2;// The acceleration due to gravity in ft/s^2

// Calculation
t=((sqrt(h_0)-sqrt(h_2))/sqrt(g/2))*((D_tank/D_jet)^2);
t=t/60;// Convert seconds to minutes 
printf('The time of discharge,t=%0.1f min\n',t);
