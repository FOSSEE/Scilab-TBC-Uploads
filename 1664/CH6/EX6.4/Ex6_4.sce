
//Example No.6.4.
//Page No.186.
clc;clear;
Na = 23;//Atomic weight of Na
Cl = 35.5;//Atomic weight of Cl
d = 2180;//Density of Nacl -[kg/m^3].
nA = 6.022*10^(26);
NaCl = (Na+Cl)//Molecular weight of NaCl.
printf("\n1) Molecular weigth of NaCl is %.1f",NaCl);
n = 4;
A = 58.5;
a = (((n*A)/(nA*d))^(1/3));
printf("\n2) The interatomic distance of NaCl crystal is %3.3e m",a); 
