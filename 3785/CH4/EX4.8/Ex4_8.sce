// Example 4_8
clc;funcprot(0);
// Given data
rho=8.6*10^2;// The density of gasoline in kg/m^3
L=1.0;// The tank length in m
H=0.6;// The tank height in m
g=9.807;// The acceleration due to gravity in m/s^2

// Calculation
p=rho*g*(H+(2*L));// Pa
printf("\nThe maximum pressure in the tank,p=p_a+%1.3e Pa",p)
