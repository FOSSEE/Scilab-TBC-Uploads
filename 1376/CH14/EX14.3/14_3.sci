//14.3
clc;
tc=2*2.5;
printf("time constant=%.6f ms",tc)
R=5*10^3;
C=(tc*10^-3/R)*10^6;
printf("\nCapacitance=%.2f uF",C)
Tmax=10*R*C*10^-6;
fmax=1/Tmax;
printf("\nMaximum frequency=%.2f m",fmax)