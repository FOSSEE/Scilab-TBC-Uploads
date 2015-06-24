//Part B Ex 1.1
clc;clear;close;
format('v',5);
Av=10;//voltage gain
Ri=1;//kohm
Ro=10;//ohm
Vs=2;//V(Sensor voltage)
Rs=100;//ohm(Sensor resistance)
RL=50;//ohm
Vi=Vs*Ri*1000/(Rs+Ri*1000);//V
Vo=Av*Vi*RL/(Ro+RL);//V
disp(Vo,"Output voltage of amplifier(V)");
