// Example 8.7
clc;
clear;
close;
// Given data
format('v',6);
t= 0;
Vc= 0;// in volts
Vo= 5;// in volts
R= 10;// in 2 Ω (assume)
RC= 1;// (assume)
R3= 2*R;// in Ω
R2= 3*R;// in Ω
// From equation : T= 2*Rf*C*log[1+2*R3/R2]
T= 2*RC*log(1+2*R3/R2);
Vc_t= 2;// in volts
t= T/2;
//Voltage across capacitor,
// Vc_t= Vco*[1-%e^(-t/ReqC)]= 1/5*(VR+4*Vo)*[1-%e^(-t/4*RC/5)]
VR= Vc_t*5/[1-%e^(-t/(4*RC/5))]-4*Vo;
disp("The value of VR is : "+string(VR)+" volts")

