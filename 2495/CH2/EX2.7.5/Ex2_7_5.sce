clear
clc
M1=76;//molar mass of CS2 in gm
w2=3.795;//weight of S in 100gm of CS2 in gm
w1=100;//weight of CS2
R=8.314;//in J/Kmol
Tb=319.81;//boiling point of CS2 in K
Tbp=319.45;//boiling point of pure CS2 in K
DelHm_v=351.87;//enthalpy of vaporization in J/gm
M2=(w2*M1*R*(Tb^2))/(w1*(Tb-Tbp)*DelHm_v*76)
printf('M2=%.1f gm/mol',M2)
N=M2/32;//no. of s atoms
printf('\nN=%.1f',N)

//Molecular formula S8
//There are some errors in the solution given in textbook
//page 53
