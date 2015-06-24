//Example 3.21(b)

clear;

clc;

R1=5758.2799;

R2=2199.4672;

C1=2.000D-08;

C2=1.000D-09;

SC1=1/2;

r=R1/R2;

SR1=(1-r)/(2*(1+r));

printf("Sensitivities for Example 3.10 :");

printf("\nSR=%.2f percent",SR1);

printf("\nSC=%.2f percent",SC1);