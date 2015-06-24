clc;
//page no 485
//prob no. 13.10.1
// Measurements on a 50 ohm slotted line gave
Z0=50;//measured in ohm
VSWR=2.0;
d=0.2;//distance from load to first minimum
T=(VSWR-1)/(VSWR+1);
pi=180;
Ql=pi*(4*0.2-1);
// using Euler's identity
e=cosd(Ql)+%i*sind(Ql);// expansion for e^(jQl);
a=T*e;
//Load impedance is given as
ZL=Z0*(1+a)/(1-a);
disp('ohm',real(ZL),'a) The equivalent  series resistance is');
disp('ohm',imag(ZL),'The equivalent  series reactance is');
disp('The minus sign indicate the capacitive reactance');
Yl=1/ZL;
disp('ohm',1/real(Yl),'b) The equivalent  parallel resistance is');
disp('ohm',1/imag(Yl),'The equivalent  parallel reactance is');