clc
//Chapter3: Modulation
//Example3.19, page no 178
//Given
R=1// load resistance
Eo=100//RF voltage
Po=Eo^2/R//Carrier power
E=110//Modulated RMS voltage
Pt=E^2/R//Total modulated power
ma=sqrt(2*((Pt/Po)-1))// Depth of modulation
mprintf('Modulation Index is: %f %c',ma*100,'%')
