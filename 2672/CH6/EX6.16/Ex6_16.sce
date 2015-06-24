//Example 6_16
clc;
clear;
close;
format('v',5);
//given data : 
Vrms=230;//V
f=50;//Hz
Gamma=0:0.001:0.005;//Ripple factor(Gamma<=0.005)
IL=0.5;//A
Gamma=Gamma(4);//Taken for the solution
Vm=sqrt(2)*Vrms;//V
Vdc=Vm/%pi;//V
Idc=IL;//A
RL=Vdc/Idc;//ohm
C=1/(2*sqrt(3)*f*RL*Gamma)*1000;//mF
disp(C,"Value of capacitance(mF) : ");
//Answer in the textbook is not accurate.
