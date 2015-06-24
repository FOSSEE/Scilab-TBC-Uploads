//Example 1_25
clc;
clear;
close;
format('v',6);
//given data :
V1=2;//V
R1=10;//ohm
R2=20;//ohm
R3=40;//ohm
R4=30;//ohm
R5=15;//ohm
//solution
VBC=R4/(R4+R1)*V1;//V
VDC=R5/(R2+R5)*V1;//V
VBD=VBC-VDC;//V
Vth=VBD;//V
Req=R1*R4/(R1+R4)+R2*R5/(R2+R5);//ohm
//Thevenin equivalent current
IL=Vth/(Req+R3);//A
IL=IL*1000;//mA
disp(IL,"Current through BD, from B to D(mA)");
