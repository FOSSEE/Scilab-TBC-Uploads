//Example 6_22
clc;
clear;
close;
format('v',7);
//given data : 
IL=50;//micro A
C=4;///micro F
C1=4;///micro F
L=20;///H(Choke Inductance)
R=200;//ohm(Choke Resistance)
V=300;//V
Idc=IL/1000;//mA
Vdc=V*sqrt(2)-4170*Idc/C-Idc*R;//V
disp(Vdc,"Output Voltage(V) : " );
r=3300*Idc/C/C1/L/R;//Ripple factor
Vrms=r*Vdc;//V
disp(Vrms,"Ripple Voltage(V) : ");
//Answer in the textbook is wrong. calculation & value putting mistake.
