clc
//Chapter 2:Small Signal Amplifiers
//example 2.10 page no 51
//given
Z1=1*10^3//asumming impedance value for required specification
Av=-50//voltage gain
Zf=-Av*Z1//feedback impedance
mprintf('Z1=%d K ohm \n feedback impedance (Zf)= %d K ohm',Z1*1e-3,Zf*1e-3)
