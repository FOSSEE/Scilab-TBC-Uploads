clear ;
clc;
// Example 25.6
printf('Example 25.6\n\n');
//page no. 776
// Solution 

// Given 
H_EtOH =-1330.51  ;// Change in enthalpy of ethanol -[kJ/g mol]
H_Ac = -887.01 ;// Change in enthalpy of acetate -[kJ/g mol]
H_Fr = -221.75 ;// Change in enthalpy of formate -[kJ/g mol]
H_Lc = -1330.51 ;// Change in enthalpy of lactate -[kJ/g mol]
H_Mn = -2882.78  ;// Change in enthalpy of mannitol -[kJ/g mol]
mol_EtOH =1.29   ;//ethanol produced / g mol mannitol -[g mol]
mol_Ac = 0.22    ; //acetate produced / g mol mannitol -[g mol]
mol_Fr = 1.6    ; //formate produced / g mol mannitol-[g mol]
mol_Lc = 0.4    ;//lactate produced / g mol mannitol-[g mol]
mol_Mn = 1.0    ;//mannitol produced / g mol mannitol-[g mol]
B_growth = 40.5   ;// Biomass growth -[g cells/g mol mannitol]

// (a)
del_H1 = H_EtOH*mol_EtOH +H_Ac*mol_Ac + H_Fr*mol_Fr + H_Lc*mol_Lc - H_Mn*mol_Mn ;// Net enthalpy change for several products (metabolites) per g mol mannitol consumed -[kJ]
printf(' (a) Net enthalpy change for several products (metabolites) per g mol mannitol consumed is %.2f kJ.\n',del_H1) ;

//(b)
del_H2 = del_H1 / B_growth ;//Net enthalpy change for several products (metabolites) per g cells produced-[kJ]
printf('  (b) Net enthalpy change for several products (metabolites) per g cells produced is %.2f kJ.',del_H2) ;