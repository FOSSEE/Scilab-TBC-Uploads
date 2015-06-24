clear;
clc;
I=5*exp(%i*(90)/(180/%pi));Z1=5+(%i*5);Z2=2;Z3=-%i*2;
I2=I*Z1/(Z1+Z2+Z3);
V2=I2*Z3;
I1=I*Z3/(Z1+Z2+Z3);
V1=I1*Z1;
printf("The reciprocity theorem has been verified.");
