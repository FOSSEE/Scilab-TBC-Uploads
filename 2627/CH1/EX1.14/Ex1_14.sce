//Ex 1.14
clc;clear;close;
format('v',6);
V=20;//V
R1=25;//ohm
R2=40;//ohm
R3=15;//ohm
R4=10;//ohm
VAC=R3*V/(R1+R3);//V
VBC=R4*V/(R2+R4);//V
//0=VAB+VBC-VAC;///from KVL
VAB=-VBC+VAC;//V
disp(VAB,"Voltage VAB(V)");
