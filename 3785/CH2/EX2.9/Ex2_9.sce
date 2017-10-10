// Example 2_9
clc;funcprot(0);
// Given data
// From table 2.1
z=5;// Altitude in km
z_i=0;// The initial height in km
dTbydz=-6.5;// The temperature gradient from 0 to 5 km in K/km
T_i=288.15;// Temperature in K
p_i=1.0133*10^5;// Pressure in Pa
R=287;// Gas constant in J/kg.K

//Calculation
// Using equation 2.41,
T=T_i+((dTbydz)*(z-z_i));// Temperature in K
// Using equation 2.42,
p=p_i*(T/T_i)^(-1/((dTbydz*10^-3)*29.26));// The pressure in Pa
rho=p/(R*T);// The density in kg/m^3
printf("\nT=%0.1f K \np=%1.4e Pa \nrho=%0.4f kg/m^3",T,p,rho);
