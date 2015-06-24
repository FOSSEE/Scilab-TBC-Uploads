//chapter 7
//example 7.8
//Calculate the atomic polarisability of sulphur
//page 190
clear;
clc;
//given
Er=4; // relative permittivity of sulphur
Eo=8.85E-12; // in F/m (absolute permittivity)
NA=2.08E3; // in Kg/m^3 (density of atoms in sulphur)
//calculate
// Since ((Er-1)/(Er+2))*(M_A/p)=(N/(3*Eo))*alpha_e
// therefore we have
alpha_e=((Er-1)/(Er+2))*(3*Eo/NA); // calculation of electronic polarisability of sulphur
printf('\nThe electronic polarisability of sulphur is \t=%1.2E Fm^2',alpha_e);
// NOTE: The answer in the book is wrong due to calculation mistake. Also one point to be mentioned is that wrong formula has been used in the solution but i have used the formula as used in the solution.
