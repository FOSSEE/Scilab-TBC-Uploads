clc;
//page no 494
//prob no. 14.16
Zo=50;//line impedance in ohm
f=100*10^6;//operating freq in Hz
ZL1=50+%i*75;// load impedance with Xc=75
Xc=75;
// Capacitance in farads is given as
C=1/(2*%pi*f*Xc);
disp('F',C,'Capacitance is');