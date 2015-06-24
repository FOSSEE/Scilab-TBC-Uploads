////Ex 13.6
clc;
clear;
close;
format('v',6);
RL1=100;//ohm
RL2=1;//ohm
RCS=7;//ohm
VEB=0.7;//V
Beta=25;//unitless
//For 100 ohm Load
Vout=5;//V(as 7805 used)
IL=Vout/RL1;//A
VRCS=IL*RCS;//V(Voltage across RCS)
//VRCS<VEB, hence Q1 is off
Iout=IL;Iin=IL;//A
Iext=Iout-Iin;//A
disp(Iext,"For 100 ohm load, Output current Iext(A)");
//For 1 ohm Load
Vout=5;//V(as 7805 used)
IL=Vout/RL2;//A
ILmax=IL;//A
VRCS=IL*RCS;//V(Voltage across RCS)
//VRCS>VEB, hence Q1 is on
Iout=(ILmax+Beta*VEB/RCS)/(Beta+1);//A
Iext=ILmax-Iout;//A
disp(Iext,"For 10 ohm load, Output current Iext(A)");
