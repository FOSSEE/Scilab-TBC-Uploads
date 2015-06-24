//Example 10.7

clear;

clc;

K=10;

VT0=(273.2*10^(-3));//273.2 K for T=0 degCelsius

fo0=0;

R2R3rat=(1-VT0)/VT0;

RC=1/((10^4)*K);

C=3.9*10^(-9);

R=RC/C;

R3=2.74*10^3;

R2=R3*R2R3rat;

R1=R-((R2*R3)/(R2+R3));

printf("Designed Celsius to Frequency Converter :");

printf("\nR=%.3f kohms",R*10^(-3));

printf("\nR1=%.f ohms",R1);

printf("\nR2=%.2f kohms",R2*10^(-3));

printf("\nR3=%.2f kohms",R3*10^(-3));

printf("\nC=%.1f nF",C*10^9);

printf("\nTo calibrate, place the IC in a 0 deg Celsius environment and adjust R2,");

printf("\nso that the circuit is barely oscillating, say fo=1 Hz. Then move the IC to");

printf("\na 100 deg Celsius environment and adjust R1 for f0=1 kHz.");