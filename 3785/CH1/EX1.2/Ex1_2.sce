// Example 1_2
clc;funcprot(0);
// Given data
T=98.6;// Temperature in °F
p=1.0133*10^5;// Pressure in N/m^2
M=32;// The molecular weight of oxygen 
R=8.3143*10^3;// Universal gas constant in J/kg.K
O=20/100;// The maximum oxygen concentration in oxygenated blood in %

// Calculation
rho=(p*M)/(R*(273.15+((5/9)*(T-32))));// Density in kg/m^3
rho_O2=O*rho;// The partial density of blood oxygen in kg/m^3
printf("\nThe partial density of oxygen in blood at this concentration is %0.4f kg/m^3",rho_O2);
