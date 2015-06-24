clear;
clc;

// Illustration 11.10
// Page: 640

printf('Illustration 11.10 - Page: 640\n\n');

// Solution

//*****Data******//
// a:N2 b:H2O
Mb = 18;// [kg/kmol]
Ma = 29;// [kg/kmol]
Z = 0.268;// [m]
Xo_solid = 0.01;// [kg H20/kg solid]
Density_bed = 712.8;// [kg/cubic m]
T = 28.3;// [OC]
P = 593;// [kN/square m]
Gs = 4052;// [kg/square m.h]
Xo_gas = 1440*10^(-6);// [mole fraction]
//********************//

// Yo_star is in equilibrium with Xo:
Xo = 0;// [kg H20/kg solid]
Yo_star = 0;// [kg H20/kg N2]
thetha_t = 12.8;// [h]
thetha_b = 9;// [h]
// The breakthrough data are plotted in the manner of Fig. 11.47 (Pg 639) and thetha_s is dtermined:
thetha_s = 10.9;// [h]
Xt = 0.21;// [kg H20/kg solid]
// From Eqn. 11.81:
LUB = (Z/thetha_s)*(thetha_s-thetha_b);
// For thetha_b = 15 h
thetha_b = 15;// [h]
Yo = (Xo_gas/(1-Xo_gas))*(Mb/Ma);// [kg H20/kg N2]
// From Eq. 11.82:
Zs = Gs*(Yo-Yo_star)*thetha_b/(Density_bed*(Xt-Xo_solid));// [m]
// From Eqn. 11.85:
Z = LUB+Zs;
printf("Height of adsorbent column: %f m\n",Z);