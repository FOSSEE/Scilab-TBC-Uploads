//ques1
//Entropy Change during an Isothermal Process
clear
clc
//The system undergoes an internally reversible, isothermal process, and thus its entropy change can be determined directly from Eqns
Q=750//heat in kJ
Tsys=300//temperature of system in K
dS=Q/Tsys;//entropy change of process in kJ/K
printf('Change in entropy = %.2f kJ/K',dS);
