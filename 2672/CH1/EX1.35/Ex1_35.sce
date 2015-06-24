//Example 1_35
clc;
clear;
close;
format('v',5);
//given data :
V=12;//V
R1=4;//ohm
R2=6;//ohm
R3=6;//ohm
R4=6;//ohm
//Current by the source while -AB open circuit 
I=V/(R2*R3*R4/(R2*R3+R3*R4+R2*R4)+R1);//A
//Voltage across AB
VOC=I*(R2*R3*R4/(R2*R3+R3*R4+R2*R4));//V\
//Thevenin equivalent Resistance
Rth=(R2*R3*R4/(R2*R3+R3*R4+R2*R4)*R1/(R2*R3*R4/(R2*R3+R3*R4+R2*R4)+R1));//ohm
Ri=Rth;//ohm
RL=Ri;//ohm//For maximum Power transfer
disp(RL,"For maximum Power transfer, RL(ohm)");
I=VOC/(Rth+RL);//A
PL=I^2*RL;//W
disp(PL,"Value of maximum Power(W)");
Eta=RL/(RL+Ri)*100;//%
disp(Eta,"Power Transfer Efficiency(%)");
