// Example 15_14
clc;funcprot(0);
// Given data
p=0.100;// MPa
T_a=298;// K
T_b=2000;// K
R=0.0083143;// MJ/kgmole.K 

// Calculation
// (a)
gbar0_f_H2O=-228.583;// kJ/kgmole
// since H2 and O2 are elements, their molar specific Gibbs function of formation is zero. Then, from Table 15.7, 
gbar0_f_H2=0;// kJ/kgmole
gbar0_f_O2=0;// kJ/kgmole
K_e=exp(gbar0_f_H2O/(R*T_a));// The equilibrium constant
printf("\n(a)The equilibrium constant,K_e=%1.2e",K_e);
// (b)
T_b_R=T_b*1.8;// R
// Eq. (15.34) with Tables 15.7 and C.16c in Thermodynamic Tables to accompany Modern Engineering Thermodynamics give
h_a_H2O=4258.3;// Btu/lbmole
h_b_H2O=35540.1;// Btu/lbmole
h_a_H2=3640.3;// Btu/lbmole
h_b_H2=26398.5;// Btu/lbmole
h_a_O2=3725.1;// Btu/lbmole
h_b_O2=29173.5;// Btu/lbmole
s_a_H2O=188.833;// kJ/(kgmole.K)
s_b_H2O=63.221;// Btu/(lbmole.R)
s_a_H2=130.684;// kJ/(kgmole.K)
s_b_H2=44.978;// Btu/(lbmole.R)
s_a_O2=205.138;// kJ/(kgmole.K)
s_b_O2=64.168;// Btu/(lbmole.R)
// Note: The multipliers 2.3258 and 4.1865 in these equations are necessary to convert the Btu/lbmole and Btu/(lbmole.R) values in Table C.16c into kJ/kgmole and kJ/(kgmole.K), respectively.
gbar_f_H2O=(gbar0_f_H2O*10^3)+((h_b_H2O-h_a_H2O)*2.3258)-[((T_b*s_b_H2O)*4.1865)-(T_a*s_a_H2O)];// kJ/kgmole
gbar_f_H2=gbar0_f_H2+((h_b_H2-h_a_H2)*2.3258)-[((T_b*s_b_H2)*4.1865)-(T_a*s_a_H2)];// kJ/kgmole
gbar_f_O2=gbar0_f_O2+((h_b_O2-h_a_O2)*2.3258)-[((T_b*s_b_O2)*4.1865)-(T_a*s_a_O2)];// kJ/kgmole
K_e=exp([gbar_f_H2O-gbar_f_H2-((1/2)*gbar_f_O2)]/(R*10^3*T_b));// The equilibrium constant
printf("\n(b)The equilibrium constant,K_e=%1.2e",K_e);
