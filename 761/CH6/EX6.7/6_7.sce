clc;
//page no 245
//prob no. 6.7
//An FM detector produce Vpp=1.2V with dev=10kHz
Vpp=1.2;dev=10*10^3;
//Determination of detector sensitivity
Vp=Vpp/2;//Peak voltage
kd=Vp/dev;
disp('uV/Hz',kd*10^6,'the sensitivity of detector is');