// Example 4_6
clc;funcprot(0);
// Given data
D_t=30;// The diameter of an oil storage tank in m
H=5;// The depth of the oil in m
D_p=5;// The inside diameter of pipe in cm
g=9.807;// The acceleration due to gravity in m/s^2

// Calculation
t=(D_t/(D_p/100))^2*sqrt((2*H)/g);// Time in s
t=t/3600;// Time in hours
printf("\nIt will take %3.0f hr for the oil to drain completely from the tank.",t)
