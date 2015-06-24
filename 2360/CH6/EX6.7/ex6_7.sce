// Exa 6.7
format('v',7);clc;clear;close;
// Given data
R1 = 5.1;// in k ohm
R1 = R1 * 10^3;// in ohm
R2 = 7.9;// in k ohm
R2 = R2 * 10^3;// in ohm
R3 = 790;// in ohm
C1 = 2;// in µF
C1 = C1 * 10^-6;// in F
omega = 1000;// in rad/sec
Rx = (((omega)^2)*R1*((C1)^2)*R2*R3)/( 1+(((omega)^2) * ((R1)^2)* ((C1)^2)) );// unknown resistance in ohm
Rx = Rx * 10^-3;// in k ohm
disp(Rx,"The value of unknown resistance in kΩ is");
Lx = (R2*R3*C1)/( 1+(((omega)^2) * ((R1)^2)* ((C1)^2)) );// unknown inductance in H
Lx = Lx * 10^3;// in mH
disp(Lx,"The value of unknown inductance in mH is");
