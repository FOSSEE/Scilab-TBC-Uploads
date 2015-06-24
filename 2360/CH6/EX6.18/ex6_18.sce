// Exa 6.18
format('v',7);clc;clear;close;
// Given data
C3 = 10;//capacitance in µF
C3 = C3 * 10^-6;// in F
R1 = 1.2;//resistance in  k ohm
R1 = R1 * 10^3;// in ohm
R2 = 100;//resistance in k ohm
R2 = R2 * 10^3;// in ohm
R3 = 120;//resistance in k ohm
R3 = R3 * 10^3;// in ohm
Rx = (R2*R3)/R1;//resistance of unknown impedance  in ohm
Rx = Rx * 10^-6;// in M ohm
disp(Rx,"The resistance of unknown impedance in MΩ is");
Cx = (R1*C3)/R2;//capacitance of unknown impedance  in F
Cx = Cx * 10^6;// in µF
disp(Cx,"The capacitance of unknown impedance in µF is");
