//Example 1.3

clear;

clc;

R1=10*10^3;

R2=100*10^3;

Ri=R1;//Input Resistance

Ro=0;//Output Resistance

A=-(R2/R1);// Ideal Overall Gain

printf("Ri=%.2f kohms",(Ri/1000));

printf("\nRo=%.f ohms",Ro);

printf("\nA=%.2f V/V",A);