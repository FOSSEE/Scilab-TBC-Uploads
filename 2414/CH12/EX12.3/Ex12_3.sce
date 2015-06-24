clc;
close();
clear();
//page no 403
//prob no. 12.3
B=2*10^6;  //Hz
Req=6*10^6 ; //ohm
Vrms=(16*10^-21*B*Req)^0.5;  //volts
mprintf('vrms=%.1f micro-V',Vrms*10^6);
