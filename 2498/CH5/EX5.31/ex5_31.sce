// Exa 5.31
clc;
clear;
close;
format('v',6)
// Given data
L = 100;// in µH
L = L * 10^-6;// in H
A=10;
C1 = 0.001;// in µF
C1 = C1 * 10^-6;// in F
C2 = 0.01;// in µF
C2 = C2 * 10^-6;// in F
C = (C1*C2)/(C1+C2);// in F
f = 1/(2*%pi*sqrt( L*C ));// in Hz
f = round(f * 10^-3);// in kHz
disp(f,"The operating frequency in kHz is");
Beta = C1/C2;// feedback fraction
disp(Beta,"The feed back fraction is");
//Minimum gain to sustain oscillations, Amin*Beta = 1;
Amin = 1/Beta;
disp(Amin,"The minimum gain to sustain oscillation is");
// A = R_C/R_E;
R_C = 2.5;// in ohm
R_E = R_C/A;// in ohm
disp(R_E,"The emitter resistance in ohm is");
