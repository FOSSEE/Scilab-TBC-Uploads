// Example 7_3
clc;funcprot(0);
// Given data
L=100;// The length of the ship in m
A=3*10^3;// Surface area in m^2
rho=1.03*10^3;// The density of sea water in kg/m^3
V=8;// Speed in m/s
epsilon=1*10^-4;// The surface roughness in m
nu=1*10^-6;// The kinematic viscosity in m^2/s

// Calculation
Re_L=(V*L)/nu;// The length Reynolds number Re_L
// If the ship surface were smooth,
C_D_fp=0.455/(log10(Re_L))^2.58;// The drag coefficient
// For a rough surface,
C_D_fp=0.30/(log10(14.7*(L/epsilon))^2.5);// The drag coefficient for a rough surface
D=((1/2)*rho*V^2)*A*C_D_fp;// The ship's frictional drag force in N
P=D*V;// The power in MW
printf("\nThe ships frictional drag force,D=%1.4e N \nThe power required to overcome drag force,DV=%1.3f MW",D,P/10^6);
