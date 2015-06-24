//Example 6_17
clc;
clear;
close;
format('v',5);
//given data : 
RL=3.15;//kohm
rf=20;//ohm
//v=230*sin(314*t)
Vm=230;//V
f=50;//Hz
Irms=0.707*Vm/(rf+RL*1000);//A
Im=Vm/(rf+RL*1000);//A
Idc=0.637*Im
Gamma=sqrt((Irms/Idc)^2-1);//Ripple factor
disp(Gamma,"Ripple factor : ");
