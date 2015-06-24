clc
clear

//Input data
T=20+273 //Temperarture of medium in K
Cp_fr=678 //Specific heat capacity at constant pressure of freon in J/kg-K
Cv_fr=543 //Specific heat capacity at constant volime of freon in J/kg-K
T_air=0+273 //Temperature of air in K
Ri=8314 //Ideal gas constant in J/mol-K
mol_h=2 //Molecular weight of Hydrogen in kg/mol
mol_water=18 //Molecular weight of water in kg/mol
R_air=287 //Specific gas constant of air in J/kg-K
k=1.4 //Adiabatic constant of hydrogen
k_water=1.3 //Adiabatic constant of water

//Calculation
R_h=Ri/mol_h //Specific gas constant of hydrogen in J/kg-K
a_h=sqrt(k*R_h*T) //Velocity of sound in hydrogen in m/s
R_water=Ri/mol_water //Specific gas constant of water in J/kg-K
a_water=sqrt(k_water*R_water*T) //Velocity of sound in water vapour in m/s
k_fr=Cp_fr/Cv_fr //Adiabatic constant of feoan
R_fr=Cp_fr-Cv_fr //Specific gas constant of freon in J/kg-K
a_fr=sqrt(k_fr*R_fr*T) //Velocity of sound in freon in m/s
a_air=sqrt(k*R_air*T_air) //Sonic Velocity of air at in m/s

//Output
printf('(A)Velocity of sound in hydrogen is %3.2f m/s\n (B)Velocity of sound in water vapour is %3.2f m/s\n (C)Velocity of sound in freon is %3.2f m/s\n (D)Sonic Velocity of air at %3i K is %3.4f m/s',a_h,a_water,a_fr,T_air,a_air)
