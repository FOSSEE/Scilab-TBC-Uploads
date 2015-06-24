// Exa 6.36
format('v',7);clc;clear;close;
// Given data
C2 = 500;// capacitance in nF
C2 = C2 * 10^-9;// in F
f = 50;//frequency in Hz
omega = 2*%pi*f;// in rad/sec
C4 = 0.148;//capacitance in µF
C4 = C4 * 10^-6;// in F
R4 = 72.6;//resistance in ohm
R3 = 300;//resistance in ohm
C1 = C2*(R4/R3);// capacitance in F
C1 = C1 * 10^6;// in µF
disp(C1,"The capacitance in µF is");
delta = atand(omega*C4*R4);//dielectric loss angle of capacitance in degree
disp(delta,"The dielectric loss angle of capacitance in degree is");

// Note: The calculation in the book is wrong, so the answer in the book is wrong.
