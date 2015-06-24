// Exa 6.8
format('v',7);clc;clear;close;
// Given data
R1 = 1.2;// in k ohm
R1 = R1 * 10^3;// in ohm
R2 = 4.7;// in k ohm
R2 = R2 * 10^3;// in ohm
C1 = 1;// in µF
C1 = C1 * 10^-6;// in F
C3 = 1;// in µF
C3 = C3 * 10^-6;// in F
Rx = (R2*C1)/C3;// unknown resistance in ohm
Rx = Rx * 10^-3;// in k ohm
Cx = (R1*C3)/R2;// unknown capacitance in F
Cx = Cx * 10^6;// in µF
disp(Rx,"The unknown resistance in kΩ is ")
disp(Cx,"The unknown capacitance in µF is");
f = 0.5;// in kHz
f = f * 10^3;// in Hz
// omega = 2*%pi*f;
D = 2*%pi*f*Cx*10^-6*Rx*10^3;// dissipation factor 
disp(D,"The dissipation factor is");
