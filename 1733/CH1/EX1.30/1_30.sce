//1.30
clc;
ns=5;
Vd=800;
Vs=3000;
Ib=8*10^-3;
dQ=30*10^-6;
R=(ns*Vd-Vs)/((ns-1)*Ib)
C=((ns-1)*dQ)/(ns*Vd-Vs)*10^6;
printf("The value of resistance = %.2f ohm ",R)
printf("\nThe value of capacitance = %.2f uF ",C)