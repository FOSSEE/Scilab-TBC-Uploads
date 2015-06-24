
//Example No.8.11.
//Page No.235.
clc;clear;
n = 8.49*10^(28);//Concentration of electrons in copper -[m^-3].
e = 1.6*10^(-19);//Value of electron.
Tr = 2.44*10^(-14);//Relaxation time of electron -[s]
m = 9.1*10^(-31);//mass of electron.
k = 1.38*10^(-23);//Boltzman's constant.
T = 293;//Temperature -[K].
d = ((n*e^(2)*Tr)/(m));
printf("\n1)The electrical conductivity is %3.3e per ohm meter",d);
K = ((n*(%pi)^(2)*k^(2)*T*Tr)/(3*m));
printf("\n 2)The thermal conductivity is %.2f W m^-1.K^-1",K);
L = K/(d*T);
printf("\n3)The Lorentz number is %3.3e W ohm K^-2",L);
