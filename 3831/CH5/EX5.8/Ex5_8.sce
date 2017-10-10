// Example 5_8
clc;funcprot(0);
// Given data
P_1=600;// psia
T_1=800;// ºF
V=250;// ft^3
gamma_TNT=1400;// Btu/lbm

// Calculation
// From the superheated steam table, Table C.3a of Thermodynamic Tables to accompany Modern Engineering Thermodynamics,we find that at 600. psia and 800.ºF,
u_1=1275.4;// Btu/lbm
v_1=1.190;// ft^3/lbm
u_f2=38.1;// Btu/lbm
u_2=u_f2;// Btu/lbm
gamma=(u_1-u_2)/v_1;// Btu/ft^3
Ee=gamma*V;// Btu
n=Ee/gamma_TNT;// The number of one-pound sticks of TNT to match the boiler explosion
printf('\n(a)The explosive energy per unit volume of superheated steam,gamma=%4.1f Btu/ft^3 \n(b)%3.0f one-pound sticks of TNT to match the boiler explosion',gamma,n);
