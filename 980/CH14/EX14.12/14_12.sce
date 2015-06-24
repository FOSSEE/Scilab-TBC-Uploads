clc;
clear;
format('v',6);
aE=5;
aH=10;
Ap=aE*aH;
epsilone_ap=0.6;                        //assuming.
Ae=epsilone_ap*Ap;
D=4*%pi*Ae;
disp(D,"The directivity=");
HPBW_E=56/aE;
HPBW_H=67/aH;
disp(HPBW_E,"the E plane HPBW(in degree)=");
disp(HPBW_H,"the H plane HPBW(in degree)=");
