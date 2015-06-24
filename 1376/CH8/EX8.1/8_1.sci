//8.1
clc;
ZL=220/2;
printf("Load impedance=%.1f ohm",ZL)
Z_total=220/4;
printf("\nImpedance of the combination=%.2f ohm",Z_total)
I1=2;
I2=2.5;
I3=4;
P=(Z_total/2)*(I3^2-I1^2-I2^2);
printf("\nPower absorbed by load=%.2f W",P)
pf=P/(220*2^2);
printf("\npower factor of load=%.2f",pf)