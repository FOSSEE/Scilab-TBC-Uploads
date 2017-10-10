
//To Calculate the Potential Difference and Thermal Energy

//Example 32.5

clear;

clc;

V=2.0;//Emf of battery in Volts

i=0.100;//Current in Amperes

r=0.50;//Resistance in ohms

Vab=V-i*r;//Potential difference across the terminals

printf("(a) Potential difference across the terminals= %f V",Vab);

t=10;//Time in seconds

U=i^2*r*t;//Formula for finding the thermal energy developed in the battery

printf("\n(b) Thermal energy developed in the battery is= %.2f J",U);
