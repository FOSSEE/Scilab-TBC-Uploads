// Example 8.1: gm
clc, clear
IDSS=12; // in mili-amperes
Vp=-5; // in volts
VGS=-1.5; // in volts
gmo=2*IDSS/abs(Vp); // in mili-Siemens
gm=gmo*(1-VGS/Vp); // in mili-Siemens
disp(gm,"gm (mS) =");