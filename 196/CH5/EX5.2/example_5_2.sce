//Chapter 5
//Example 5-2
//ProbOnInputResistance 
//Page 121,122, Figure  5-1
clear;clc;
//Given
Efs = 5 ;//Full scale Voltage
Ifs = 50*10^-6;//Full scale Meter Current
Ri = Efs / Ifs ;// Input Resistance
printf ( "\n\n Input Resistance = %.4f ", Ri )