//Example 3_1
clc;
clear;
close;
format('v',6);
//given data :
//v=100*sin(314*t)
R=20;//ohm
Vm=100;//V
omega=314;//
Vrms=Vm/2;//V
Irms=Vrms/R;//A
disp(Irms,"rms value of current (A)");
