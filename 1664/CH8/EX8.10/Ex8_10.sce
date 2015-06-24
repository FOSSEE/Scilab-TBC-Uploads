
//Example No.8.10.
//Page No.234.
clc;clear;
K = 387;//Thermal conductivity of copper -[W m^-1 K^-1].
d = 5.82*10^(7);//Electrical conductivity of copper -[ohm^-1 m^-1].
T = 300;//Temperature -[K].
L = (K/(d*T));
printf("\nThe Lorentz number is %3.3e W ohm K^-2",L);
