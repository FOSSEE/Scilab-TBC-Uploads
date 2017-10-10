
//To Calculate the Heat Developed in each of the three resistor

//Example 33.1

clear;

clc;

R1=6;//Resistance of the first resistor

R2=3;//Resistance of the second resistor

Req=R1*R2/(R1+R2);//Equivalent resistance of R1 and R2

R3=1;//Resistance of the third resistor

R=Req+R3;//Equivalent resistance of the circuit

V=9;//Voltage across the battery

i=V/R;//Current through the Circuit

t=60;//Time in seconds

H3=i^2*R3*t;//Heat developed in third resistor

i1=i*R/(R1+R2);//Current through the 6 ohm resistor

H1=i1^2*R1*t;//Heat developed in first resistor

i2=i-i1;//current through the 3 ohm resistor

H2=i2^2*R2*t;//heat developed in Second Resistor

printf("Heat developed in the first resistor=%d J",H1);

printf("\nHeat developed in the second resistor=%d J",H2);

printf("\nHeat developed in the third resistor=%d J",H3);
