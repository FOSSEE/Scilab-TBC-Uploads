clear ;
clc;
// Example 18.3
printf('Example 18.3\n\n');
//Page No. 544
// Solution fig.E18.3

V_BDA  = 1000 ;// Volume of bone dry air(BDA) at 20 C & 108.0 kPa
mol_V =  22.4 ;// Molar volume of gas at standard condition-[m^3]
T = 20+273 ;// Temperature of BDA-[K]
P = 108.0 ;//Pressure of BDA-[kPa]
Ts = 273 ;// Standard temperature-[K]
Ps = 101.3 ;//Standard pressure-[kPa]
W = 0.93 ;// [kg]
mw_W =  18 ;// mol. wt. of 1kmol water -[kg]
mol_W = W/mw_W ;// amount of water vapour(W)-[kg mol]
mol_BDA = (V_BDA*Ts*P)/(T*Ps*mol_V) ;//  amount of BDA-[kg mol]
p_H2O =  (mol_W/(mol_W+mol_BDA))*P ;// Partial pressure of H2O-[kPa]

// Get vapour pressure for water at 15 C , namely 1.70 kPa
psat_H2O  =  1.70 ;//vapour pressure for water at 15 C-[kPa]
rel_H = (p_H2O/psat_H2O) ;//Fractional relative humidity-[]
printf('\n(a)Fractional relative humidity of original air was %.3f .\n',rel_H);