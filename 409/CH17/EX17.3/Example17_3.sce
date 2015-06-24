clear ;
clc;
// Example 17.3
printf('Example 17.3\n');
// Page no. 519
// Solution Fig E17.3b

// Given
// coal analysis from handbook
ex_air = .4 ;// Fraction of excess air required
w_C = 12 ;// Mol. wt. of C-[g]
mol_C = 71/w_C ;//[kg mol]
w_H2 = 2.016 ;// Mol. wt. of H2 - [g] 
mol_H2 = 5.6/w_H2;
air_O2 = 0.21;// Fraction of O2 in air
air_N2 = 0.79;// Fraction of N2 in air

// Natural Gas
// Basis = 1 kg mol C 
// CH4 + 2O2 --> CO2 + 2H2O .... Eqn. (a)
CO2_1 = 1 ;//  By Eqn. (a) CO2 produced -[kg mol]
H2O_1 = 2 ;// By Eqn. (a) H2O produced -[kg mol]
Req_O2_1 = 2 ;// By Eqn. (a) -[kg mol]
ex_O2_1 = Req_O2_1*ex_air  ;// Excess O2 required -[kg mol]
O2_1 = Req_O2_1 + ex_O2_1 ;// Total O2 required - [kg mol]
N2_1 = O2_1*(air_N2/air_O2) ;//Total N2 required - [kg mol]
Total_1 = CO2_1 + H2O_1 + N2_1 + ex_O2_1 ;// Total gas produced- [kg mol]

// Coal 
// C + O2 --> CO2  ..eqn (b)
// H2 + 1/2(O2) --> H2O.... eqn (c)
CO2_2 = 1 ;//  By Eqn. (a) CO2 produced -[kg mol]
H2O_2 = mol_H2/mol_C ;// By Eqn. (a) H2O produced -[kg mol]
Req_O2_2 = 1 + (mol_H2/mol_C)*(1/2) ;// By Eqn. (b) and (c) -[kg mol]
ex_O2_2 = Req_O2_2*ex_air  ;// Excess O2 required -[kg mol]
O2_2 = Req_O2_2 + ex_O2_2; // Total O2 required - [kg mol]
N2_2 = O2_2*(air_N2/air_O2); //Total N2 required - [kg mol]
Total_2 = CO2_2 + H2O_2 + N2_2 + ex_O2_2 ;// Total gas produced- [kg mol]

// Let P (total pressure) = 100 kPa
P = 100 ;// Total pressure -[kPa]
p1 = P*(H2O_1/Total_1) ;// Partial pressure of water vapour in natural gas - [kPa]
Eq_T1 = 52.5  ;// Equivalent temperature -[degree C]
p2 = P*(H2O_2/Total_2) ;// Partial pressure of water vapour in coal - [kPa]
Eq_T2 = 35  ;// Equivalent temperature -[degree C]
printf('                                Natural gas                         Coal\n')
printf('                            ----------------------             --------------------\n')
printf('Partial pressure:                %.1f kPa                            %.1f kPa\n',p1,p2 ) ;
printf('Equivalent temperature:          %.1f C                              %.1f C\n',Eq_T1,Eq_T2 );