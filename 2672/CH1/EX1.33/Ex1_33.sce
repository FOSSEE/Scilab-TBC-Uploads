//Example 1_33
clc;
clear;
close;
format('v',5);
//given data :
V1=12;//V
R1=3;//ohm
R2=3;//ohm
I2=6;//A
//Converting currrent sources into Voltage sources
V2=I2*R2;//V
//writing KVL equation for the loop
I=poly(0,'I');
eqn=V1-R1*I-R2*I-V2;//KVL equation
I=roots(eqn);//A
VOC=V2+R2*I;//V
Req=R1*R2/(R1+R2);//ohm
RL=Req;//ohm//For maximum Power transfer
disp(RL,"For maximum Power transfer, RL(ohm)");
I=VOC/(Req+RL);//A
PLmax=I^2*RL;//W
disp(PLmax,"Value of maximum Power(W)");
Ri=Req;//ohm
Eta=1/(1+Ri/RL)*100;//%
disp(Eta,"Power Transfer Efficiency(%)");
