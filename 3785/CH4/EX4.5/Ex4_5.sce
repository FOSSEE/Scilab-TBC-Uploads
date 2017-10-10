// Example 4_5
clc;funcprot(0);
// Given data
rho=1.225;// The density of air in kg/m^3
A_0=1.0;// Area of orifice in cm^2
A_pV=2.5*10^-4;// The volumetric flow rate in m^3/s

// Calculation
P=(rho*(A_pV)^3)/(2*(A_0*10^-4)^2);// The power expended in inhaling in W
printf("\nThe power P expended in inhaling (or exhaling) is %1.2e W",P)
