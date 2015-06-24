//Example 1_21
clc;
clear;
close;
format('v',5);
//given data :
V1=90;//V
V2=50;//V
V3=100;//V
R1=60;//ohm
R2=40;//ohm
R3=30;//ohm
R4=60;//ohm
R=6:36;//ohm
//Open circuit AB
I1=V1/(R1+R3);//A
I2=V3/(R2+R4);//A
//Potential of point A
VA=I1*R3+V2;//V
//Potential of point B
VB=I2*R4;//V
VOC=VA-VB;//V
Req=R1*R3/(R1+R3)+R2*R4/(R2+R4);//ohm
Imin=VOC/(Req+max(R));//A
Imax=VOC/(Req+min(R));//A
disp("The current through resistor R will vary from "+string(Imin)+" A to "+string(Imax)+" A.");
