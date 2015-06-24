//Part B Ex 1.6
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
Po=Vo^2/RL;//W
Pi=Vi^2/Ri;//mW
Ap=Po*1000/Pi;//Power gain
disp(Ap,"Power gain");
//Answer in the book is wrong.
