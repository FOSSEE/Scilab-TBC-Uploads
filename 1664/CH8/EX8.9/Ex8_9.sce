
//Example No.8.9.
//Page No.234.
clc;clear;
m = 9.1*10^(-31);//mass of electron.
k = 1.38*10^(-23);//Boltzman's constant.
vf = 0.86*10^(6);//Fermi velocity -[m s^-1].
Ef = 0.5*m*vf^(2);//Fermi energy 
printf("\nThe Fermi energy of the metal in joules is %3.3e J",Ef);
Ef = Ef/(1.6*10^(-19));
printf("\nThe Fermi energy o the metal in eV is %.2f eV",Ef);
Tf = ((Ef)/k);//Fermi temperature.
Tf = ((3.365*10^(-19))/k);
printf("\nThe Fermi temperature of the metal is %3.3e K",Tf);
