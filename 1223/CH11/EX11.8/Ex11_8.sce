clear;
clc;
//Example 11.8
CMRRdB=90;//dB
CMRR=3.16*10^4;
b=100;
Vt=0.026;
Iq=0.8;
Ro=(2*CMRR-1)*Vt*b/((1+b)*Iq);
Ro=Ro*10^-3;//Mohm
disp(Ro,"output resistance (MOhm)")
