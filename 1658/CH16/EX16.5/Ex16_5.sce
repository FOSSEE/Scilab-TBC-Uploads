
clc;
V2=30;
RL=5.1*10**3;
VS=V2/2;
Vm=sqrt(2)*VS;
Vdc=0.636*Vm;
disp('V',Vdc*1,"Vdc=");
Vdc=Vdc/RL;
disp('mA',Vdc*10**3,"Vdc=");
