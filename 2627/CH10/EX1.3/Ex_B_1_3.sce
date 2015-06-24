//Part B Ex 1.3
clc;clear;close;
format('v',5);
Av=10;//voltage gain
Ri=%inf;//ohm
Ro=0;//ohm
Vs=2;//V(Sensor voltage)
Rs=100;//ohm(Sensor resistance)
RL=50;//ohm
//Vi=Vs*Ri/(Rs+Ri) leads to Vi approximately equals to Vs as Ri=%inf
Vi=Vs;//V
Vo=Av*Vi*RL/(Ro+RL);//V
disp(Vo,"Output voltage of amplifier(V)");
