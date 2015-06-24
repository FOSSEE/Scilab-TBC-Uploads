clear;
clc;
V=100;R1=10;R2=10;R3=10;R4=10;
I=V/(R1+R2);
Vab=I*R2;
Zab=1/((1/R1)+(1/R2));
V1=Vab*R4/(Zab+R3+R4);
Z1=1/((1/(Zab+R3))+(1/R4));
printf("The equivalent Thevenin circuit has an emf of %d volts and an internal impedance of %f ohms",V1,Z1);
