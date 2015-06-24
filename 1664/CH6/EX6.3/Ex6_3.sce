
//Example No.6.3
//Page No.186.
clc;clear;
r = 1.278*10^(-10);//Atomic radius of copper -[m].
A = 63.54;//Atomic weight of copper.
n = 4;
Na = 6.022*10^(26);
a = (2*sqrt(2)*r);
printf("\nThe lattice constant for FCC is %3.3e",a); 
d = ((n*A)/(Na*a^(3)));//for FCCn=4.
d = ((n*A)/(Na*(3.61*10^(-10))^(3)));
printf("\nThe density of copper is %.0f kg/m^3",d);
