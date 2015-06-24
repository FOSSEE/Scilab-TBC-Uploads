clc;
//page no 514
//prob no. 13.17.2
// A transmission line is terminated with
ZL=30-(%i*23);
l=0.5;//// length of line in m
Z0=50;//characteristic impedance in ohm
wl=0.45;//wavelength on the line in m
B=2*%pi/wl;
Tl=(ZL-Z0)/(ZL+Z0)
VI=1;//reference voltage in volt
VR=VI*Tl;
Vi=VI*%e^(%i*B*l);
Vr=VR*%e^-(%i*B*l);
V=Vi+Vr;
I=(Vi-Vr)/Z0;
Z=V/I;
disp('ohm',Z,'The input impedance is');