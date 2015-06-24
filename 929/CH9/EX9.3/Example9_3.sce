//Example 9.3

clear;

clc;

Tmin=50+273.2;//Temperature in Kelvin

Tmax=100+273.2;//Temperature in Kelvin

R2=5*10^3;

VTmax=Tmax/100;

VTmin=Tmin/100;

I2=(VTmax-VTmin)/R2;

R3=VTmin/I2;

Vref=6.9;

R1=(Vref-VTmax)/I2;

R4=2*10^3;

R5=6.2*10^3;

R6=10*10^3;

printf("Designed On-Off Temperature Controller :");

printf("\nR1=%.1f kohms",R1*10^(-3));

printf("\nR2=%.2f kohms",R2*10^(-3));

printf("\nR3=%.1f kohms",R3*10^(-3));

printf("\nR4=%.f kohms",R4*10^(-3));

printf("\nR5=%.1f kohms",R5*10^(-3));

printf("\nR6=%.f kohms",R6*10^(-3));