clear ;
clc;
// Example 18.4
printf('Example 18.4\n\n');
//Page no.545
// Solution fig.E18.4

F  = 1000 ;// Volume of entering moist air at 22 C & 101.0 kPa
mol_V =  22.4 ;// Molar volume of gas at standard condition-[m^3]
T_in = 22+273 ;// Temperature of entering moist air-[K]
P_in = 101.0 ;//Pressure of entering moist air -[kPa]
dp_in = 11+273 ;// Dew point of entering air-[K]
Ts = 273 ;// Standard temperature-[K]
Ps = 101.3 ;//Standard pressure-[kPa]
T_out = 58+273 ;// Temperature of exiting moist air-[K]
P_out = 98 ;//Pressure of exiting moist air -[kPa]

// Additional vapour pressure data
psat_in = 1.31 ;//Vapour pressure of entering moist air -[kPa]
psat_out = 18.14 ;// Vapour pressure of exiting moist air -[kPa]
pBDA_in = P_in-psat_in ;// Pressure of entering dry air - [kPa]
pBDA_out  =  P_out - psat_out ;// Pressure of exiting dry air - [kPa]

mol_F = (F*P_in*Ts)/(Ps*T_in*mol_V) ;// Moles of moist air entering-[kg mol]

//Material Balances to get  W
mol_P = (mol_F*(pBDA_in/P_in))/(pBDA_out/P_out); //BDA balance- [kg mol]
mol_W = mol_P-mol_F ;// Total balance -[kg mol]

// To calculate kg of wet air entering
mw_BDA = 29 ;// Mol. wt. of dry air
mw_H2O = 18 ;// Mol. wt. of water vapour
m_BDA = (mol_F*pBDA_in/P_in)*mw_BDA ;// Mass of dry air entering-[kg]
m_H2O = (mol_F*psat_in/P_in)*mw_H2O ;// Mass of water vapour entering-[kg]
wa_in = m_BDA+m_H2O ;//Total wet air entering -[kg]
H2O_ad = mol_W*mw_H2O/wa_in ;//Water added to each kg of wet air entering the process-[kg]

printf('Water added to each kg of wet air entering the process is %.3f kg.\n',H2O_ad);