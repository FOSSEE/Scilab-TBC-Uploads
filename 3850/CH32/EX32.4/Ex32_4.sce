
//To Calculate the Resistance and Energy

//Example 32.4

clear;

clc;

U1=400;//Thermal energy developed in resistor in Joules

i1=2;//Current in Amperes

t=10;//Time in seconds

R=U1/(i1^2*t);//Formula for finding the resistance

printf("(a)Resistance of resistor= %f ohm",R);

i2=4;//New Value of Current in Amperes

U=(i2)^2*R*t;//Formula for finding the thermal energy developed when the current is 4A

printf("\n(b) Thermal energy developed in the Resistor= %d J",U);
