// 2.2
clc;
P0=8.854*10^-12;
Pr1=5.5;
d1=10^-3;
b1=d1/Pr1;
Pr2=2.2;
d2=10^-3;
b2=d2/Pr2;
Pr3=1.5;
d3=10^-3;
b3=d3/Pr3;
A=100*10^-4;
C=P0*A/(b1+b2+b3);
V=5000;
Q=C*V*10^6;
printf("stored charge in the capacitor=%.2f coulombs",Q)
D=Q/A;
D=146*10^-6;
g1=D*10^-3/(P0*Pr1);
printf("\npotential gradient g1=%.2f kV/m",g1)
g2=D*10^-3/(P0*Pr2);
printf("\npotential gradient g2=%.2f kV/m",g2)
g3=D*10^-3/(P0*Pr3);
printf("\npotential gradient g3=%.2f kV/m",g3)
