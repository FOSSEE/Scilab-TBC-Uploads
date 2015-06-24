



//Chapter 12
//page no 433
//given
clc;
clear all;
Is=0.5;         //in A/W
Ir=1.5;         //in microA
Xw=Ir/Is;
printf("\n Electrical power required by PIN diode is = %0.0f microW",Xw);
Pxw=10*log10(Xw/10^3);
printf("\n Therefore, Electrical power required by PIN diode is = %0.1f dBm",Pxw);

Ps=3;            //in dB for safety margin
Tp=5;           //in dB
Pt=Tp+Ps+Pxw;
printf("\n Total Power Required = %0.1f dBm",Pt);
