//calculating Ksp
//Example 6.6
clc
clear
Ec=0.071
Ea=0.799
Ecell=Ec-Ea
Ksp=10^(Ecell/0.0591)//solubility product of AgCl in Mol^2/L^2
printf('Thus Ksp = %e Mol^2/L^2',Ksp)
