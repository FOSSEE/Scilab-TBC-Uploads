// Exa 5.13
format('v',7);clc;clear;close;
// Given data
R1 = 100;// in ohm
R2 = 1000;// in ohm
R3 = 0.00377;//standard resistance in ohm
a = 99.92;// in ohm
b = 1000.6;// in ohm
Ry = 0.1;//resistance of link in ohm
Rx =R1*R3/R2+b*Ry/(Ry+a+b)*(R1/R2-a/b);//unknown resistance in ohm
Rx = Rx * 10^3;// in mohm
disp(Rx,"The value of unknown resistance in mΩ is");

// Note: The answer will be in mΩ not MΩ.
