// Example 8_3
clc;funcprot(0);
// Given data
P=8*10^6;// The mechanical power delivered to an electric generator in MW
deltah=10;// The change in head between the turbine inlet and outlet in m
Q=100;// The volumetric flow rate in m^3/s
rho=1*10^3;// The density of water in kg/m^3
g=9.807;// The acceleration due to gravity in m/s^2

// Calculation
n_t=(P/(rho*g*Q*deltah))*100;// The turbine efficiency in %
printf(" The turbine efficiency n_t=%2.2f percentage",n_t);
