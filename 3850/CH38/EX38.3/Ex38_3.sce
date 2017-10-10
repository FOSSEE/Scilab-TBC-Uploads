
//To Calculate the Self Inductance of Coil

//Example 38.3

clear;

clc;

If=-5.0;//Final Current flowing through coil in opposite direction in Amperes

Ii=5.0;//Initial Current flowing through coil in Amperes

t=0.20;//Time Required for current to Change from -5 A to 5 A in seconds

di=(If-Ii)/t;//Change in Current through the coil in Amperes

E=0.2;//Average Induced EMF in Volts

L=-E/di;//Self Inductance of the Coil

printf("Self Inductance of the coil (L) = %.1f mH",L*10^3);
