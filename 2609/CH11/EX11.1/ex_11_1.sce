////Ex 11.1
clc;
clear;
close;
format('v',5);
Vin=12.5;//V
Ri=10;//kohm
IS=10^-13;//A
T=27;//degree C
VT=26;//mV
Vref=Ri*IS*1000;//V
Vout=-VT*10^-3*log(Vin/Vref);//V
disp(Vout,"Output Voltahe, Vout(V)");
