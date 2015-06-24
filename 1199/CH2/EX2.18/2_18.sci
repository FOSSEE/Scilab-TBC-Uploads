// 2.18
clc;
s=100*10^6;
E=200*10^9;
strain=s/E;
Gf=2;
r_per_unit=Gf*strain*100;
printf("Percentage change in resistance = %.1f ",r_per_unit)
