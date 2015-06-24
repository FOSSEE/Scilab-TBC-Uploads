// 6.11
clc;
e=1.6*10^-19;
Ea=2000;
m=9.1*10^-31;
Vox=(2*e*Ea/m)^0.5;
printf("\nmaximum velocity of the beam of electrons=%.2f m/s",Vox)
l=50*10^-3;
fc=Vox/(4*l)*10^-6;
printf("\nCutt off frequency=%.2f MHz",fc)
