//Ex 1.8
clc;
clear;
close;
format('v',6);
IREF=1;//mA
Io2=20;//micro A
Io3=40;//micro A
VBE1=0.7;//V
VT=26;//mV
VCC=10;//V
VEE=-10;//V
R=(VCC-VBE1-VEE)/IREF;//kohm
disp(R,"Value of resistance R(kohm)");
RE2=VT/Io2*log(IREF*1000/Io2);//kohm
disp(RE2,"Value of resistance RE2(kohm)");
RE3=VT/Io3*log(IREF*1000/Io3);//kohm
disp(RE3,"Value of resistance RE3(kohm)");
VBE2=VBE1-RE2*Io2/1000;//V
disp(VBE2,"Value of Base emitter voltage of transistor Q2(V)");
VBE3=VBE1-RE3*Io3/1000;//V
disp(VBE3,"Value of Base emitter voltage of transistor Q3(V)");
