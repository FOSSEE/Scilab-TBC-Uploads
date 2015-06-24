

//Example NO.10.2
//Page No.306
clc;clear;
B = 0.65;//Saturation magnetic induction -[Wb/m^2].
p = 8906;//Density -[kg/m^3].
Mat = 58.7;//Atomic weight of Ni
A = (6.022*10^26);//Avagadro's constant.
N = ((p*A)/Mat);//Number of atoms per m^-3.
printf("\nNumber of atoms per m^-3 are %3.3e m^-3",N);
u0 = (4*%pi*10^-7);
um = (B/(N*u0));
printf("\nMagnetic moment is %3.3e ",um);
Mni = (um/(9.27*10^-24));
printf("\nMagnetic moment of nickel atom is %.2f uB",Mni);
