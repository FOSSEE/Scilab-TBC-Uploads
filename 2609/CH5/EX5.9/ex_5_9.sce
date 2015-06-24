//Ex 5.9
clc;
clear;
close;
format('v',8);
Vin=2;//V
Rf=2*2/(2+2)+2;//kohm
R1=1;//kohm
Vout=-Rf/R1*Vin;//V
disp(Vout,"Output Voltage(V)");
