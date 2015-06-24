//Example 6_19
clc;
clear;
close;
format('v',5);
//given data : 
Vp=220;//V
fi=50;//Hz
RL=1.5;//kohm
Np=1000;//turns
Ns=100;//turns
Vs=Vp*Ns/Np;//V
Vrms=Vs*sqrt(2);//V
Vm=Vrms/2;//V(Across half secondary winding)
Idc=2*Vm/%pi/(RL*1000);//A
Vdc=Idc*RL*1000;//V
disp(Vdc,"dc output Voltage(V) : ");
//Answer in the textbook is not accurate.
