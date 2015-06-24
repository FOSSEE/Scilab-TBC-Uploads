
clc;
//e.g 18.12
VCC=9;
RB=220*10**3;
RC=3.3*10**3;
VBE=0.3;
B=100;
//if vc=0
IB=(VCC-VBE)/(RB+(B*RC));
disp('microA',IB*10**6,"IB=");
IC=B*IB;
disp('microA',IC*10**6,"IC=");//CORRECTION IN BOOK
//if VC=9
VC=9;
IC=B*IB;
disp('mA',IC*10**3,"IC=");
//IC*RC=0,which means collector resistance is short circuited
