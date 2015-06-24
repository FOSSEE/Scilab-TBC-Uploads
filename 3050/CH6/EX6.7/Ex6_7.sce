//calculating Kc
//Example 6.7
clc
clear
//E'cell=0.0591*logKc/n
Eag=0.8
Ecu=0.34
Ecell=Eag-Ecu
n=2
Kc=10^(n*Ecell/0.059)//equilibrium constant
printf('Thus the equilibrium constant for the reaction = %e',Kc)
