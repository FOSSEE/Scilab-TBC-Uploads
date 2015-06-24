//calculating solubility
//Example 6.5
clc
clear
Ecell=0.169
AgC=0.01
C1=AgC/(10^(Ecell/0.0591))
S=C1*143.5//solubility of AgCl in g/L
Ksp=C1^2//solubility product of AgCl in Mol^2/L^2
printf('Thus solubility of AgCl = %e g/L',S)
printf('\n and Ksp = %e Mol^2/L^2',Ksp)
