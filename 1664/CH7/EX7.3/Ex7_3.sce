

//Example No.7.3
//Page No.209.
//To find number of Schottky defected.
clc;clear;
Av = 6.022*10^(26);//Avogadro's constant.
d = 1955;//Density.
Aw = (39.1+35.45);//Atomic weight.
k = 1.38*10^(-23);//Boltzman's constant.
T = 773;//Temperature -[K]
Es = 2.6*1.6*10^(-19);//Energy formation.
N = ((Av*d)/Aw);//Concentration of atoms.
printf("\nConcentration of atoms is %3.3e m^-3",N);
n = N*exp(-(Es)/(2*k*T));
printf("\nThe number of Schottky defect for KCl at 500 degree celcius is %3.3e Schottky defect per m^-3",n);

