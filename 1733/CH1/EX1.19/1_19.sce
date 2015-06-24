//1.19
clc;
T=1/50;
V=32;
Vp=0.63*V+0.5;
C=0.4*10^-6;
Ip=10*10^-6;
Rmax=(V-Vp)/Ip;
printf("Rmax=%.0f ohm", Rmax)
Vv=3.5;
Iv=10*10^-3;
Rmin=(V-Vv)/Iv;
printf("\nRmin=%.0f ohm", Rmin)
R=T/(C*log(1/(1-0.63)));
printf("\nR=%.0f ohm", R)
disp('since the value of R is between Rmin and Rmax so the value is suitable')
R4=50*10^-6/C;
printf("\nR4=%.0f ohm", R4)
R3=10^4/(0.63*V);
printf("\nR3=%.0f ohm", R3)

