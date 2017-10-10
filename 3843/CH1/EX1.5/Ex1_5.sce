// Example 1_5
clc;funcprot(0);
// Given data
V=3*5*20;// The volume of the room in(m*m*m)
m=350;// The mass of air in kg
g=9.81;// The acceleration due to gravity in m/s^2

// Calculation
rho=m/V;// The density in kg/m^3
c=1/rho;// The specific volume in m^3/kg
gamma=rho*g;// The specific weight in N/m^3
printf("\nThe density,rho=%1.3f kg/m^3 \nThe specific volume,c=%0.3f m^3/kg \nThe specific weight,gamma=%2.2f N/m^3",rho,c,gamma);
