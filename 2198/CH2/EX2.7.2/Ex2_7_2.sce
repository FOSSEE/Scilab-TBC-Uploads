//Ex 2.7.2
clc;clear;close;
format('v',7);

//Given : 
Vgamma=0.6;//volt
Rf=10;//ohm
Eta=2;
Vm=0.2;//volts
Vdc=10;//volts
RL=1;//kohm
IDQ=(Vdc-Vgamma)/(RL*1000+Rf);//A
VT=25*10^-3;//volts
rd=Eta*VT/IDQ;//ohm
disp("Alternating component of voltage across RL, Vo(ac) = "+string(RL*1000/(RL*1000+rd)*Vm)+"*sin(omega*t)");
Vo_DC=IDQ*RL*1000;//volts
disp("Total load voltage  = "+string(Vo_DC)+"+"+string(RL*1000/(RL*1000+rd)*Vm)+"*sin(omega*t)");
