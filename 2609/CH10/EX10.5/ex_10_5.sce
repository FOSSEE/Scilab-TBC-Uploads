////Ex 10.5
clc;
clear;
close;
format('v',9);
Vsat=12.5;//V
Vref=-12.5;//V
R1=80;//kohm
R2=20;//kohm
Beta=R2/(R1+R2);//unitless
UTP=Beta*Vsat+(1-Beta)*Vref;//V
LTP=-Beta*Vsat+(1-Beta)*Vref;//V
VH=UTP-LTP;//V
R3=R1*R2/(R1+R2);//kohm
disp(UTP,"UTP(V)");
disp(LTP,"LTP(V)");
disp(VH,"Hysteresis Voltahe, VH(V)");
disp(R3,"Use R3(kohm)");
