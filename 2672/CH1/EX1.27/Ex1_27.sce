//Example 1_27
clc;
clear;
close;
format('v',4);
//given data :
V1=20;//V
V2=4;//V
R1=500;//ohm
R2=1000;//ohm
R3=100;//ohm
R4=800;//ohm
RL=1000;//ohm
//solution
VCB=-R2/(R4+R2)*V1;//V
//writing KVL equation for the loop
I=poly(0,'I');
eqn=V1-R1*I-V2-R3*I;//KVL equation
I=roots(eqn);//A
VCA=-I*R1;//V
//Potential at point B with respect to A
VBA=VCB-VCA;//V
VOC=VBA;//V
Vth=VOC;//V
Req=R1*R3/(R1+R3)+R2*R4/(R2+R4);//ohm
//Thevenin equivalent current
IL=Vth/(Req+RL);//A
IL=IL*1000;//mA
disp(IL,"Current through 1000 ohm resistor(mA)");
