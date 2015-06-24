//Example 2_14
clc;
clear;close;

//Given data: 
Vs=230;//V
f=50;//Hz
alfa=30*%pi/180;//radian
I=4;//A

//Solution :
disp("part (a)");
Vm=Vs*sqrt(2);//V
Vdc=2*Vm/%pi*cos(alfa)//V
RL=Vdc/I;//ohm
IL=I*2*sqrt(2)/%pi;//A
Pin_active=Vs*IL*cos(alfa);//W
Pin_reactive=Vs*IL*sin(alfa);//vars
Pin_appearent=Vs*IL;//VA
disp(Vdc,"dc output voltage(V)");
disp(Pin_active,"Active power input(W)");
disp(Pin_reactive,"Reactive power input(vars)");
disp(Pin_appearent,"Appearent power input(VA)");
disp("part (b)");
Vdc=Vm/%pi*(1+cos(alfa))//V
IL=Vdc/RL;//A
I_fund=2*sqrt(2)/%pi*IL*cos(alfa/2);//A
Pin_active=Vs*I_fund*cos(alfa/2);//W
Pin_reactive=Vs*I_fund*sin(alfa/2);//vars
Pin_appearent=Vs*I_fund;//VA
disp(Vdc,"dc output voltage(V)");
disp(Pin_active,"Active power input(W)");
disp(Pin_reactive,"Reactive power input(vars)");
disp(Pin_appearent,"Appearent power input(VA)");
disp("part (c)");
Vdc=Vs/sqrt(2)/%pi*(1+cos(alfa))//V
Idc=Vdc/RL;//A
disp(Vdc,"dc output voltage(V)");
disp(Idc,"dc output current(A)");
