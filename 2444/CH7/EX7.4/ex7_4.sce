// Exa 7.4
clc;
clear;
close;
format('v',5)
// Given data
L = 100;// in µH
L = L * 10^-6;// in H
C1 = 0.001;// in µF
C1 = C1 * 10^-6;// in F
C2 = 0.01;// in µF
C2 = C2 * 10^-6;// in F
f = (1/(2*%pi))*(sqrt( (1/(L*C1))+(1/(L*C2)) ));// in Hz
f = f * 10^-3;// in kHz
disp(f,"The opertaing frequency in kHz is");
Beta = C1/C2;// feedback fraction
disp(Beta,"The feed back fraction is");
Amin = 1/Beta;// minimum gain to sustain oscillations
disp(Amin,"The minimum gain to sustain oscillations is");
// A = R_C/R_E ;
R_C = 2.5;// in k ohm
R_C = R_C * 10^3;// in ohm
R_E = R_C/Amin;// in ohm
disp(R_E,"The emitter resistance in ohm is");
