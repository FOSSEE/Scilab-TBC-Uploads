// Example 2_3
clc;funcprot(0);
// Given data
m=4;// The mass of water in kg
P=220;// kPa
x=0.8;// The quality of steam

// Calculation
// Use Table C-2.To determine the appropriate numbers at 220 kPa we linearly interpolate between 0.2 and 0.3 MPa.
P_1=0.2*10^3;// kPa
P_2=0.3*10^3;// kPa
v_g1=0.8857;// m^3/kg
v_g2=0.6058;// m^3/kg
v_g=(((P-P_1)/(P_2-P_1))*(v_g2-v_g1))+v_g1;// m^3/kg
v_f=0.0011;// m^3/kg
v=v_f+(x*(v_g-v_f));// m^3/kg
V=m*v;// The total volume occupied in m^3
printf("\nThe final volume occupied by the mixture,V=%1.3f m^3",V);
