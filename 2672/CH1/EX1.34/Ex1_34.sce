//Example 1_34
clc;
clear;
close;
format('v',5);
//given data :
V1=48;//V
R1=4;//ohm
R2=20;//ohm
R3=12;//ohm
R4=12;//ohm
V2=12;//V
//Open circuit AB
I1=V1/(R1+R2);//A
I2=V1/(R3+R4);//A
VR1=V1*R1/(R1+R2);//V//across 4 ohm resistance
VR2=V1*R2/(R1+R2);//V//across 20 ohm resistance
VR3=V1*R3/(R3+R4);//V//across 12 ohm resistance
VCE=VR2;//V
VCD=VR3;//V
VBC=V2+VR3;//V
//POtential of A wih respect to B
VOC=VCE-VBC;//V
Rth=R1*R2/(R1+R2)+R3*R4/(R3+R4);//ohm
Ri=Rth;//ohm
RL=Ri;//ohm//For maximum Power transfer
disp(RL,"For maximum Power transfer, RL(ohm)");
I=VOC/(Rth+RL);//A
PL=I^2*RL;//W
disp(PL,"Value of maximum Power(W)");
//Answer in the textbook is wrong.
