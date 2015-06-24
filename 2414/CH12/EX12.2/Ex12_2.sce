clc;
close();
clear();
//page no 401
//prob no. 12.2
B=10^6;  //Hz
R=10^7 ; //ohm
Vrms=(16*10^-21*B*R)^0.5;  //volts
G=5000;  //gain
vorms=Vrms*G;
mprintf('vorms=%.1f V',vorms);
