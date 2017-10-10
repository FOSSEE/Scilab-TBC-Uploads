// Example 5_2
clc;clear;funcprot(0);
// Given data
CV=28900;//kJ/kg
n_b=83;// The boiler efficiency in %
n_t=32;// The turbine efficiency in %
n_g=97;// The generator efficiency in %
W=30;// The coal consumption of the station in tons/hr

// Calculation
P=((W*1000*CV)*(n_b/100)*(n_t/100)*(n_g/100))/(3600*1000);// The capacity of the power plant in MW
printf('\n The capacity of the power plant,P=%0.0f MW',P);
