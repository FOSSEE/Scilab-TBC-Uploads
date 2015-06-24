//example 5.41

clear;
clc;


disp("Zn(s)|ZnCl2(aq)||CdSO4(aq)|Cd(s)");
//For Zn(s)|ZnCl2(aq)||CdSO4(aq)|Cd(s)
//Given:
T=298;//Temperature[K]
R=8.314;//Universal gas constant[J/K/mol]
E1=-0.7618;//Standard electrode potential for Zn2+/Zn [volts]
E2=-0.403;//Standard electrode potential for Cd2+/Cd [volts]
F=96500;//Faraday's constant[coulomb/mol]
n=2;//no. of electrons balancing
//To find the Standard Free energy and equilibrium constant 
Ei=E2-E1;//Standard potential for the reaction[volts]
Gi=-n*F*Ei;//Standard Gibb's Free Energy [KJ/mol] 
Ki=exp(-Gi/R/T);//Equilibrium constant
printf("The Free energy for the rection is %f KJ/mol",Gi*0.001);
disp(Ki,'The value of equilibrium constant is ');


disp("Cd(s)|CdSO4(aq),Hg2SO4(s)|Hg(l)");
//For Cd(s)|CdSO4(aq),Hg2SO4(s)|Hg(l)
//Given:
E3=0.6141;//Standard electrode potential for Hg2SO4(s),SO4^2-/Hg(l) [volts]
//To find the standard free energy and equilibrium constant
Eii=E3-E2;//Standard potantial for the reaction[volts]
Gii=-n*F*Eii;//Standard Gibb's free energy[KJ/mol]
Kii=exp(-Gii/R/T);//Equilibrium constant
printf("The Free energy for the rection is %f KJ/mol",Gii*0.001);
disp(Kii,'The value of equilibrium constant is');

