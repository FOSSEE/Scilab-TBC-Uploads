clear ;
clc;
// Example 18.5
printf('Example 18.5\n');
//Page No.547
// Solution fig.E18.5
 
// Given data
//Basis: F = 29.76 lb mol
F  = 29.76 ;// amount of entering moist air -[lb mol]
F_rh = 90/100 ;// Relative humidity
T_in = 100 + 460 ;// Temperature of entering moist air-[Rankine]
P_in = 29.76 ;//Pressure of entering moist air -[in. of Hg]
psat_in =  1.93 ;// Saturation pressure from steam table-[in. of Hg]
T_out = 120 + 460 ;// Temperature of exiting dry air-[Rankine]
P_out = 131.7 ;//Pressure of exiting dry air -[in. of Hg]
psat_out =  3.45 ;// Saturation pressure from steam table-[in. of Hg]
mol_V =  22.4 ;// Molar volume of gas at standard condition-[m^3]
mw_H2O  =  18.02 ;// Mol. wt. of water -[lb]
mw_air  =  29 ;// Mol. wt. of air -[lb]
p_H2O_in = F_rh*psat_in ;// Partial pressure of water vapour at inlet--[in. of Hg]
p_air_in = P_in-p_H2O_in ;// Partial pressure of air at inlet--[in. of Hg]

// Assume condensation takes place , therefore output gas P is saturated,
P_rh =  1;// Relative humidity of output gas
p_H2O_out = P_rh*psat_out ;// Partial pressure of water vapour at outlet--[in. of Hg]
p_air_out = P_out-p_H2O_out ;// Partial pressure of air at outlet--[in. of Hg]

// Get W and P from  balance of air and water
P = (p_air_in*F/P_in)/(p_air_out/P_out) ;// From air balance-[ lb mol]
W = (p_H2O_in*F/P_in)-(P*p_H2O_out/P_out);// From water balance -[lb mol]
W_ton = (W*mw_H2O*2000)/(p_air_in*mw_air) ;// Moles of water condenses per ton dry air-[lb mol]
W_m = mw_H2O*W_ton ;// Mass of water condenses per ton dry air-[lb]
//  Since W is positive our assumption(condensation takes place ) is right .
printf('\n(a) Yes water condense out during compression ,since W(%.3f  lb mol) is positive our assumption(condensation takes place ) is right .\n',W);
printf('(b) Amount of water condenses per ton dry air is %.1f lb mol i.e %.0f lb water.\n',W_ton,W_m);
