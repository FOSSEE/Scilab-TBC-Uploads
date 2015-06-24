clc;
//e.g 17.4
Vrms=100;
a=45;
Idc=0.5;
Vm=sqrt (2)*Vrms;
disp('V',Vm*1,"Vm=");
//Idc=(Vm/(2*%pi*RL))*(1+cosd(a));
RL=(Vm/(2*%pi*Idc))*(1+cosd(a));
disp('ohm',RL*1,"RL=");
