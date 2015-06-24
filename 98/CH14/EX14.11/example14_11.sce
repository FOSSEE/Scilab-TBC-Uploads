//Chapter 14
//Example 14_11
//Page 372

clear;clc;

v=400;
ph_v=230;
w1=100;
w2=150;

r1=ph_v^2/w1;
r2=ph_v^2/w2;

i=v/(r1+r2);
v1=i*r1;
v2=i*r2;

printf("Resistance of lamp L1 = R1 = %.2f ohm \n\n", r1);
printf("Resistance of lamp L2 = R2 = %.2f ohm \n\n", r2);
printf("Curretn through lamps = %.3f A \n\n", i);
printf("Voltage across lamp L1 = V1 = %.0f V \n\n", v1);
printf("Voltage across lamp L2 = V2 = %.0f V \n\n", v2);


