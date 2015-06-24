//Example 1_22
clc;
clear;
close;
format('v',6);
//given data :
V1=24;//V
V2=12;//V
R1=4;//ohm
R2=5;//ohm
R3=3;//ohm
R4=5;//ohm
R5=3;//ohm
RL=10;//ohm
//Open circuit AB
I=V1/(R1+R2+R3);//A
//Potential of point A
VBQ=0;//V//there is no current
VPS=0;//V//there is no current
VQP=I*(R2+R3);//V
VSA=V2;//V
//Potential of point A with respect to B
VAB=VBQ+VQP+VPS-VSA;//V
VOC=VAB;//V
Req=R1*(R2+R3)/(R1+R2+R3)+R4+R5;//ohm
//Thevenin equivalent current
I=VOC/(Req+RL);//A
disp(I,"Current flowing through load resistance(A)");
