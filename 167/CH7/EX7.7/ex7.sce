//ques7
//Effect of Density of a Liquid on Entropy
clear
clc

//state 1
P1=1//pressure in MPa
T1=110//temperature in K
s1=4.875//entropy in kJ/Kg.K from table
Cp1=3.471//specific heat at constant pressure in kJ/Kg.K from table

//state 2
P2=5//pressure in MPa
T2=120//temperature in K
s2=5.145//entropy in kJ/Kg.K
Cp2=3.486//specific heat at constant pressure in kJ/Kg.K

s=s2-s1;//entropy change in kJ/kg.K
printf('(a) Change in entropy per unit mass = %.3f kJ/kg.K \n',s);

//(b) Approximating liquid methane as an incompressible substance
c=(Cp1+Cp2)/2;//average specific heat 
s=c*log(T2/T1);//entropy change in kJ/Kg
printf(' (b) Entropy change per unit mass = %.3f kJ/kg.K',s);
