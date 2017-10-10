// Example 16_4
clc;funcprot(0);
// Given data
T=35+273.15;// K
V=300;// m/s

// Solution
// Using Table C.13b in Thermodynamic Tables to accompany Modern Engineering Thermodynamics for the values of the specific heat ratio and the gas constant for methane, we get
k_methane=1.30;// The specific heat ratio
g_c=1;// The gravitational constant
R_methane=518;// J/kg.K
c_methane=sqrt(k_methane*g_c*R_methane*T);// m/s
M_methane=V/c_methane;//The Mach number
printf("\nThe Mach number of the methane,M_methane=%0.3f",M_methane);
