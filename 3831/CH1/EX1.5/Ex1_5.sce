// Example 1_5
clc;funcprot(0);
// Given data
D=0.07;// The diameter in m
R=D/2;// The radius in m
h=0.15;// The height in m
L=(3/4)*h;// m
rho=1000;// The density in kg/m^3
M=18;// kg/kg mole

// Calculation
m=(%pi*R^2*L)*rho;// The mass of water in the glass in kg
n=m/M;// The number of moles in kg moles
printf("\nThe number of kilogram moles of water in the glass,n=%0.3f kgmole",n);
