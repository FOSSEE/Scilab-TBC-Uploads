//Example 2.7

clear;

clc;

R1=15*10^3;

R2=3*10^3;

R3=R1;

R4=R2;

a=200*10^3;

Ro1num=R1*R2;

Ro1den=R1+R2;

Ro1=Ro1num/Ro1den;

Ro2num=a;

Ro2den=(1+(R2/R1));

Ro2=Ro2num/Ro2den;

Ro=Ro1*(1+Ro2);//Output resistance

printf("Output Resistance (Ro)=%.f Mohms",Ro*10^(-6));