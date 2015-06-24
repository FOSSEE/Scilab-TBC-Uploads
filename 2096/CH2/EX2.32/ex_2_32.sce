//Example 2.32 //inductance and capacitance
clc;
clear;
close;
//given data :
f=2*10^6; // resonant freqencies in Hz
Cs=210*10^-12; // resonant capacitor in farad
Cv=6*10^-12; // capacitance of voltmeter in farad
L=1/((Cs+Cv)*4^2*(%pi)^2*f^2);
C=((1/(4*L*(%pi)^2*f^2*10^-12))-6);//
disp(L*10^6,"inductance,L(micro henry) = ")
disp(C,"capacitance in pF is")
