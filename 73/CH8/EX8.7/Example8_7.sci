//Chapter 8_Applications of Operational Amplifier
//Caption : Output Voltage
//Example8.7: In the summing amplifier(inverting mode) the signals to be combined are V1=3V, V2=2v, and V3=1V.The input resistor are R1=R2=R3=3 kilo ohm.The feeddback resistor Rf=1 kilo ohm. Consider ideal Op-Amp,determine Vo.
//Solution:
clear;
clc;
V1=3;//input signal
V2=2;//input signal
V3=1;//input signal
Rf=1*10^3;//feedback resitor
R1=3*10^3;//input resistor in ohm
R2=R1;//input resistor in ohm
R3=R2;//input resistor in ohm
Vo=-(Rf/R1*V1+Rf/R2*V2+Rf/R3*V3);
disp('V',Vo,'Output Voltage of summing amplifier is:')