//ques3
//calculating equilibrium constant 
clear
clc
dG1=-457.166;//change in gibbs free energy at temp 298 K from example2 in kJ
dG2=-271.040;;//change in gibbs free energy at temp 2000 K from example2 n kJ
T1=298;//K
T2=2000;//K
R=8.3145;//gas constant
K1=dG1*1000/(R*T1);
K2=dG2*1000/(R*T2);
printf('Equilibrium constant at %.0f K = %.3f \n',T1,K1);
printf(' Equilibrium constant at %.0f K = %.3f \n',T2,K2);