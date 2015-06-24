//Example 11.11

clear;

clc;

T1=25;

T2=175;

TC=-2*10^(-3);

VBE41=700*10^(-3);

VBE42=VBE41+(TC*(T2-T1));

Vref=1.282;

R7R8rat=(Vref/VBE42)-1;

IB4=0.1*10^(-3);

R8=(Vref/(10*IB4))/(1+R7R8rat);

R7=R8*R7R8rat;

printf("R7=%.f ohms",R7-2);

printf("\nR8=%.f ohms",R8);