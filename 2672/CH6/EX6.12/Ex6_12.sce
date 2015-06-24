//Example 6_12
clc;
clear;
close;
format('v',6);
//given data : 
V1=230;//V
N2ByN1=1/3;//turns ratio
RL=200;//ohm
V2=V1*N2ByN1;//V
Vm=sqrt(2)*V2;//V
Im=Vm/RL;//A
Pmax=Im^2*RL;//W
disp(Pmax,"Maximum load power(W) : ");
format('v',5);
Vdc=0.318*Vm;//V
Idc=Vdc/RL;//A
Pdc=Idc^2*RL;//W
disp(Pdc,"Average value of load power(W) : ");
//Answer in the textbook is not accurate.
