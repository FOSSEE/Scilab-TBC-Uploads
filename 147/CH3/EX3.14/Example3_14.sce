//Inductance L, Resistance of coil Rl, Voltage V, Frequency f
close();
clear;
clc;
L = 0.046;//H
Rl = 10;//ohm
V = 100;//V
f = 60;//Hz
omega = 2*%pi*f;
Zl = Rl + %i*omega*L;
Il = V/Zl;
Ilr = polar(Il);
Ilarg = atan(imag(Il),real(Il))*180/%pi;
Power_factor = cos(Ilarg*%pi/180);
//For unity power factor imaginary part of admittance must be zero hence Capacitance across the coil
C = -imag(1/Zl)/omega;
mprintf('Current drawn I = %0.1f arg(%0.0f degree)\nPower factor = %0.1f lagging \nCapacitance that must be connected across coil in order to make the power factor unity C = %0.0f micro F',Ilr,Ilarg,Power_factor,C*10^6);