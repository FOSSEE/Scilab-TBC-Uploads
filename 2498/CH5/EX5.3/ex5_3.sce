// Exa 5.3
clc;
clear;
close;
format('v',6)
// Given data
C = 0.06;// in pF
C = C * 10^-12;// in F
L = 0.5;// in H
R = 10;// in k ohm
R = R * 10^3;// in ohm
Cm = 1;// in pF
Cm = Cm * 10^-12;// in F
// The parallel resonant frequency 
f_p = (1/(2*%pi))*( sqrt( (C+Cm)/(L*C*Cm) ) );// in Hz
f_p= f_p*10^-3;// in kHz
disp(f_p,"The parallel resonant frequency in kHz is");
// The series resonant frequency 
f_s = 1/(2*%pi*(sqrt(L*C)));// in Hz
f_s= f_s*10^-3;// in kHz
disp(f_s,"The series resonant frequency in kHz is ");
omega_s = 2*%pi*f_s*10^3;// in rad/sec
// The Q factor of the crystal 
Q = (omega_s*L)/R;
disp(Q,"The Q factor of the crystal is");
