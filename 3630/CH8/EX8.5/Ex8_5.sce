clc;
Vout=0.3; //volt
RL=1200; //Ohm
Zout=300; //ohm
VL=Vout*(RL/(RL+Zout)); //voltage divider rule
disp('mV',VL*1000,"Vl=");//The answers vary due to round off error



