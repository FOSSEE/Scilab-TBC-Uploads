

//Example No.7.2
//Page No.208.
//To find energy for vacancy information.
clc;clear;
Av = 6.022*10^(26);//Avogadro's constant.
d = 9500;//Density.
Aw = 107.9;//Atomic weight -[g/mol].
k = 1.38*10^(-23);//Boltzman's constant.
T = 1073;//Temperature -[K]
n = 3.6*10^(23);//Number of vacancies -[per m^3].
N = ((Av*d)/Aw);//Concentration of atoms.
printf("\nConcentration of atoms is %3.3e m^-3",N);
Ev = k*T*log(N/n);
printf("\nThe energy for vacancy formation in joules is %3.3e J",Ev);
Ev = Ev/1.6*10^(19);
printf("\nThe energy for vacancy formation in eV is %3.3e eV",Ev);
