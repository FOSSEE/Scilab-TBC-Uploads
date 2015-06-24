//calculating deltaG and Kc
//Example 6.9
clc
clear
Ecell=0.89//in V
n=6
F=96500// in 1/mol
deltaG=-n*F*Ecell//in C.V or J
//Kc related to deltaG
R=8.314//in J/molk
T=298//in K
Kc1=10^(-deltaG/(2.303*R*T))
//Kc related to Ecell
Kc2=10^((n*F*Ecell)/(2.303*R*T))
printf('Thus (i)deltaG = %e',deltaG)
printf('\n(ii)Kc in relation with deltaG = %e',Kc1)
printf('\n(iii)Kc in relation with Ecell = %e',Kc2)
