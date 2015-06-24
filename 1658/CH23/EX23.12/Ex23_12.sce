clc;
VCC=18;
Rx=2*10**3;
VBE=0.7;
Ix=(VCC-VBE)/Rx;
I=Ix;
disp('mA',I*10**3,"I=");
