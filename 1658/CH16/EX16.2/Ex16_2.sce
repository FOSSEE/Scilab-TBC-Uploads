clc;
//e.g 16.2
RL=20*10**3;
V2=24;
Vm=sqrt(2)*V2;
disp('V',Vm*1,"Vm=");
Im=Vm/RL;
disp('mA',Im*10**3,"Im=");
Idc= 0.318*Im;
disp('mA',Idc*10**3,"Idc=");
