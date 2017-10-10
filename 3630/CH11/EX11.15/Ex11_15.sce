clc;
Vpp=12; //Volt
RL=8; //Ohm
Pd=Vpp^2/(40*RL); //Watt
disp('mW',Pd*1000,"Pd=");//The answers vary due to round off error


