//Ex 3.2
clc;clear;close;
Vin=2.5;//mV
R1=2;//kohm
Rf=200;//kohm
G=-Rf/R1;//Gain
Vo=G*Vin/1000;//V
disp(Vo,"Output Voltage(V) : ");
