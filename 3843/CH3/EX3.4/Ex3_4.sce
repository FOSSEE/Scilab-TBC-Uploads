// Example 3_4
clc;funcprot(0);
// Given data
V=90;// km/h
C_D=0.2;// The drag coefficient
rho=1.23;// The density of air in kg/m^3
A=2.3;// m^2

// Calculation
V=V*(1000/3600);// The velocity in m/s
F_D=(1/2)*rho*(V^2)*A*C_D;// The drag force in N
W=F_D*V;// The work done in W
Hp=W/746;// The required horse power in hp
printf("\nThe required horse power,Hp=%1.2f hp",Hp);
