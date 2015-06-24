//Example 6_20
clc;
clear;
close;
format('v',5);
//given data : 
Vdc=30;//V
RL=1;//kohm
Gamma=0.015;//Ripple factor
Idc=Vdc/RL;//mA
C=2900/Gamma/(RL*1000);//micro F
disp(C,"Filter capacitor(micro F) : ");
format('v',6);
Vm=Vdc+5000*Idc/1000/C;///V
V2=2*Vm/sqrt(2);//V
disp(V2,"Required intput Voltage(V) : ");
//Answer in the textbook is not accurate.
