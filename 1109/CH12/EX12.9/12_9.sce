clear;
clc;
V1=10;V2=20;R1=5;R2=15;
Isc=(V1/R1)+(V2/R2);
Zab=1/((1/R2)+(1/R1));
printf("-Short circuit current = %f Amp\n",round(Isc*100)/100);
printf("-Equivalent impedance = %f ohm",Zab);
