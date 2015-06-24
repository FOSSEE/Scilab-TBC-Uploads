//Example 2.11(b)

clear;

clc;

R0=100;

alpha=0.00392;

T1=25;

R1=R0*(1+alpha*T1);

printf("R(25 deg Celsius)=%.2f ohms",R1);

T2=100;

R2=R0*(1+alpha*T2);

printf("\nR(100 deg Celsius)=%.2f ohms",R2);

T3=-15;

R3=R0*(1+alpha*T3);

printf("\nR(-15 deg Celsius)=%.2f ohms",R3);