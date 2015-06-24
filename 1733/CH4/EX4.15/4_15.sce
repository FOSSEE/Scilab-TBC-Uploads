//4.15
clc;
Vc=200;
Im=60;
toff=15*10^-6;
C1=toff*Im/Vc;
C=5*10^-6*10^6;
printf("\nCapacitance = %.0f uF", C)
Ipc=Im*1.5-Im;
L=C/(Ipc/Vc)^2*10^6;
printf("\nInductance = %.1f uH", L)

