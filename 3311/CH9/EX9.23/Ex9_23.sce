// chapter 9
// example 9.23
// What value of C should the load have in order to obtain load commutation of SCR
// page-620
clear;
clc;
// given
Edc=50; // in V (source voltage)
R=3; // in ohm
wL=12; // in ohm
T=0.2; // in ms (time period)
tq=12; // in us
Toff=1.5*tq;
// calculate
T=T*1E-3; // changing unit from ms to s
Toff=Toff*1E-6; // changing unit from us to s
phi_w=Toff; // calculation of phi/w
f=1/T; // calculation of frequency
w=2*%pi*f; // calculation of angular velocity
phi=phi_w*w; // calculation of phase angle
X_L=wL;
// since Tan(phi)=(X_C-X_L)/R, therefore we get
X_C=(tan(phi)*R)+X_L; // calculation of capacitive reactance
// since X_c=1/(w*C), therefore we get
C=1/(X_C*w); // calculation of required capacitance
printf("\nThe value of C that the load sholud have in order to obtain load commutation of SCR is \t C=%.2f uF",C*1E6);
// Note: The answer in the book is wrong due to calculation mistake in calculating the variable phi_w 