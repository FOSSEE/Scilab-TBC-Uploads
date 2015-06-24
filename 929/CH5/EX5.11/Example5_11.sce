//Example 5.11

clear;

clc;

Tmax=70;

T=100;

Iqmax=2.8*10^(-3);

VCC=15;

VEE=-15;

P1=(VCC-VEE)*Iqmax;

P=310*10^(-3);

Io=(P-P1)/VCC;

PC=5.6*10^(-3);

Pmax=P+((Tmax-T)*PC);

Io=(Pmax-P1)/VCC;

printf("Maximum Current at 100degC=%.1f mA",Io*10^3);