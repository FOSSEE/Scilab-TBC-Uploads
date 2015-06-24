// Exa 6.3
format('v',7);clc;clear;close;
// Given data
C3 = 10;// in µF
C3 = C3*10^-6;// in F
R1 = 1.2;// in k ohm
R1 = R1 * 10^3;// in ohm
R2 = 100;// in k ohm
R2 = R2 * 10^3;// in ohm
R3 = 120;// in k ohm
R3 = R3 * 10^3;// in ohm
Rx = (R2*R3)/R1;//unknown resistance in ohm
Rx = Rx * 10^-6;// in M ohm
disp(Rx,"The value of Rx in MΩ is");
Cx = (R1*C3)/R2;// in F
Cx = Cx * 10^6;//unknown capacitance in µF
disp(Cx,"The value of Cx in µF is");
