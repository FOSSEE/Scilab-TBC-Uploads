// Example 6_11
clc;funcprot(0);
// Given data
D_i=3;// The inner diameter of hollow cylinder in cm
D_o=10;// The outer diameter of hollow cylinder in cm
L=20;// Length in cm
Q=1;// The fuel flow rate in l/min
mu=2*10^-6;// The fuel viscosity in Pa s
k=1*10^-6;// The fuel filter permeability in m^2

// Calculation
// Assume dp=p_in-p_out
dp=((mu*Q/60)/(2*%pi*k*L/100))*log(D_o/D_i);// The pressure drop in Pa
printf("\n The pressure drop,p_in-p_out=%1.3e Pa",dp);
