clear ;
clc;
// Example 17.1
printf('Example 17.1\n');
// Page no. 511
// Solution 

// Basis : F =  1 mol
F = 1 ;//H2C2O4- [mol]
ex_O2 =  248 ;//Excess air- [%]
f_C = 65/100 ;// Fraction of Carbon which convert to CO2
P = 101.3 ;// Atmospheric pressure-[kPa]

// H2C2O4 + 0.5*O2-->2*CO2  +  H2O
// H2C2O4 -->2*CO  +  H2O + 0.5*O2
O2_req = F*0.5 ;// O2 required by the above reaction-[mol]
O2_in = (1 + ex_O2*F/100)*0.5 ;// Mol. of O2 entering

// Use Elemental balance moles of species in output 
n_CO2 = f_C*2 ;// [mol]
n_H2O = (2*F)/2 ;// From 2H balance-[mol]
n_N2 = ((O2_in*0.79)/(0.21)) ;//  From 2N balance-[mol]
n_CO = 2-n_CO2 ;// From C balance-[mol]
n_O2 = ((4 + O2_in*2)-(n_H2O + n_CO + 2*n_CO2))/2 ;// From O2 balance-[mol]
total_mol = n_CO2 + n_H2O + n_N2 + n_CO + n_O2 ;// Total moles in output stream-[mol]
y_H2O = n_H2O/total_mol ;// Mole fraction of H2O
pp_H2O = y_H2O*P ;// Partial pressure of H2O-[kPa]

printf('\nPartial pressure of H2O %.2f kPa.',pp_H2O);
printf('\nUse partial pressure of H2O to get dew point temperature T from steam table: T  = 316.5 K');