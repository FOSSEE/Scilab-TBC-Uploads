//Chapter-4,Example 5,Page 93
clc;
close;

delta_H= -109   // heat change in Kcal

n_1= 2    //mols of gaseous reactant

n_2= 1    // mols of gaseous product

delta_n= n_2-n_1

T=500

R= 2*10^-3

delta_E = (delta_H) - (delta_n*R*T)

printf('the value of delta_E is %.f Kcal',delta_E)
