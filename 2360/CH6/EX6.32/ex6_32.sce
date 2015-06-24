// Exa 6.32
format('v',7);clc;clear;close;
// Given data
f = 2;//frequency in kHz
f = f * 10^3;// in Hz
omega = 2*%pi*f;// in rad/sec
R2 = 834;//resistance in ohm
C2 = 0.124;//capacitance in µF
C2 = C2 * 10^-6;// in F
XC2= 1/(2*%pi*f*C2);// in Ω
R3= 100;//resistane in Ω
C4= 0.1*10^-6;//capacitance in F
XC4= 1/(2*%pi*f*C4);// in Ω
Z2= R2-%i*XC2;// in Ω
Z3=R3;// in Ω
Z4= 0-%i*XC4;// in Ω
// For balanced condition, effective impedance   
Z1= Z2*Z3/Z4;//in Ω
disp(Z1,"The effective impedance in Ω is : ")




