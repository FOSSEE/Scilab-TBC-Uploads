// Example 10_8
clc;funcprot(0);
// Given data
m=10;// kg
P_1=100;// The initial pressure in kPa
P_2=50;// The final pressure in MPa
beta=5*10^-5;// K^-1
rho=8770;// kg/m^3

// Calculation
// ds=s_2-s_1;
ds=-(1/rho)*beta*[(P_2-(P_1/10^3))*10^6];// J/kg.K
printf("\nThe entropy change,s_2-s_1=%0.3f J/kg.K",ds);
