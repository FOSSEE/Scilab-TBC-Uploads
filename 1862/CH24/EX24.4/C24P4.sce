clear
clc
//to find net entropy change of the gas for irreverse process

//Given:
//refer to figure 24-5(a)and (b) from page no. 550
//number of moles
n = 0.55//in mol
//room temperature
T = 293//in K
//molar gas constant
R = 8.31//in J/mol.K

//Solution:
//applying laws of thermodynamics
//applying formula for entropy change for isothermal expansion
//ratio of final to initial volumes //since both chamber are of same volumes
Vf_by_Vi = 2
//entropy change of the gas for irreverse process
delta_S = n*R*log(Vf_by_Vi)//in J/K

printf ("\n\n Ratio of final to initial volumes VF/Vi = \n\n %1i" ,Vf_by_Vi);
printf ("\n\n Entropy change of the gas for irreverse process delta_S = \n\n %.2f J/K" ,delta_S);
