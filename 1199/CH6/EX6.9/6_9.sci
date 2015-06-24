// 6.9
clc;
e=1.6*10^-19;
Ea=2000;
m=9.1*10^-31;
Vox=(2*e*Ea/m)^0.5;
printf("\nmaximum velocity of the beam of electrons=%.2f m/s",Vox)
L=5;
ld=1.5*10^-2;
d=5*10^-3;
S=(L*ld/2*d*Ea);
printf("\ndeflection sensitivity=%.2f mm/V",S)
G=1/S;
printf("\nDeflection Factor=%.2f V/mm",G)
