//8.2
clc;
I=125/10;
ZL=50/I;
printf("Load impedance=%.1f ohm",ZL)
Z_total=150/I;
printf("\nImpedance of the combination=%.2f ohm",Z_total)
I1=125;
I2=50;
I3=150;
P=(1/(2*10))*(I3^2-I1^2-I2^2);
printf("\nPower absorbed by load=%.2f W",P)
Pr=I^2*10;
printf("\nPower consumed by the resistor=%.2f W",Pr)
pf=P/(50*I);
printf("\npower factor of load=%.2f",pf)