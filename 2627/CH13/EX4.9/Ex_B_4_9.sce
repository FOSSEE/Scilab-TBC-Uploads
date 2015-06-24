//Ex 4.9
clc;clear;close;
format('v',6)
//Part (a)
delta_f=75;//kHz
fm=15;//kHz
DR=delta_f/fm;//Deviation ratio
disp(DR,"(a) Deviation ratio");
//For m or DR=5 we have 8 sidebands
B=2*(8*fm);//kHz
disp(B,"(a) Bandwidh for worst case(kHz)");
//Part (b)
delta_f=75/2;//kHz
fm=15/2;//kHz
DR=delta_f/fm;//Deviation ratio
disp(DR,"(b) Deviation ratio or modulation index");
//For m or DR=5 we have 8 sidebands
B=2*(8*fm);//kHz
disp(B,"(b) Bandwidh for worst case(kHz)");
