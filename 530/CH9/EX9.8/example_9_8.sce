clear;
clc;

// A Textbook on HEAT TRANSFER by S P SUKHATME
// Chapter 9
// Mass Transfer


// Example 9.8
// Page 369
printf("Example 9.8, Page 369 \n \n");

V = 0.5 ; // [m/s]
T_h = 30 ; // [C]
T_c = 26 ; // [C]
Tm = (T_h+T_c)/2;
// From table A.2
rho = 1.173 ; // [kg/m^3]
Cp = 1005 ; // [J/kg K]
k = 0.02654 ; // [W/m K]

alpha = k/(rho*Cp); // [m^2/s]

// From Table 9.2 at 301 K
Dab = 2.5584*10^-5 ; // [m^2/s]
lambda = 2439.2*10^3 ; // [J/kg]

// Substituting in equation 9.7.5
// let difference = rho_aw-rho_a infinity
difference = rho*Cp*((alpha/Dab)^(2/3))*(T_h-T_c)/lambda;

// From steam table
Psat = 3363;
rho_aw = Psat/(8314/18*299);
rho_inf = rho_aw - difference;
x = rho_inf/rho; // mole fraction of water vapour in air stream

PP = rho_inf*8314/18*303; // Partial pressure of water vapour in air stream
// From steam table partial pressure of water vapour at 30 C
PP_30 = 4246 ; // [N/m^2]

rel_H = PP/PP_30;
percent = rel_H*100;

printf("Relative humidity = %f i.e. %f percent ",rel_H,percent);