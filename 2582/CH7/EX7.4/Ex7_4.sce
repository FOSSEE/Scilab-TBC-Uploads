//Ex 7.4
clc;clear;close;
format('v',6);
fo=10;//kHz
V=12;//V
fL=8*fo/(V-(-V));//kHz(both +ve & -ve value)
C=10;//micro F(Assumed)
fC=sqrt(fL*10^3/(2*%pi*3.6*10^3*C*10^-6));//Fz(both +ve & -ve value)
disp(fC,fL,"Frequency fL & fC in kHz");
LR=2*fL;//kHz(Lock Range)
disp(LR,"Lock Range(kHz)");
CR=2*fC;//kHz(Capture rage)
disp(CR,"Capture Range(Hz)");
