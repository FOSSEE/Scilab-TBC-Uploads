// Exa 5.4
format('v',7);clc;clear;close;
// Given data
R3 = 100.03;//standard resistance in µohm
R3 = R3 * 10^-6;// in ohm
R2 = 100.24;//outer ratio arms resistance in ohm
R1 = 200;//outer ratio arms resistance in ohm
b = 100.31;// in ohm
a = 200;// in ohm
Ry = 700;// in µohm
Ry = Ry * 10^-6;// in ohm
Rx = ((R1*R3)/R2) + ( ((b*Ry)/(Ry+a+b)) * ((R1/R2) - (a/b)) );// in ohm
Rx = Rx * 10^6;//unknown resistance in µohm
disp(Rx,"The unknown resistance in µΩ is");
