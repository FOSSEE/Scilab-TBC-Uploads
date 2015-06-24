//Ex 1.11
clc;clear;close;
VBE3=0.7;//V
VBE1=0.7;//V
IREF1=100;//micro A
IC1=IREF1;//micro A
IREF2=1;//mA
IC2=IREF2;//mA
Beta=200;//unitless
//IC2/IC1=(IS*exp(VBE2/VT))/(IS*exp(VBE1/VT))
VT=26;//mV
deltaVBE=VT*10^-3*log(IC2/IC1);//V(deltaVBE=VBE2-VBE1)
deltaVx=2*deltaVBE;//V
IO=IREF1/(1+2/(Beta^2+Beta));//micro A
delIO=IC1-IO;//micro A
Change=delIO/IO*100;//%
disp(Change,"Change in Io(%) : ");
