clear;
clc;
Ro=600;R1=240;
R2=((Ro*Ro)-(4*R1*R1))/(4*R1);
d=acosh(1+(2*R1/R2));
printf("Value of shunt resistance = %d ohm\n",R2);
printf(" Attenuation = %f db",round(d*8.686*10)/10);
