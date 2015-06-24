clc
//Chapter 4:Frequency selective networks and transformers
//example 4.1 page no 108
//given
R=50//load resistance in ohm
B=100//bandwidth in KHz
Cf=5//filter center frequency in MHz
L=R/(2*%pi*10^5)//inductance in micro henry
C=((L)*(2*%pi*Cf*10^6)^2)^-1//capacitance
mprintf('the inductance is %f uH \n the capacitance is %f pF ',L*1e6,C*1e12)
