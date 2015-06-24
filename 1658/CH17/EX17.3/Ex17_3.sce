clc;
//e.g 17.3
Vrms=220;
a=60;
Vm=sqrt (2)*Vrms;
disp('V',Vm*1,"Vm=");
Vdc=(Vm/(2*%pi))*(1+cosd(60));
disp('V',Vdc*1,"Vdc=");
