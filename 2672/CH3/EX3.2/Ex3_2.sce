//Example 3_2
clc;
clear;
close;
format('v',5);
//given data :
//v=150*sin(100*%pi*t)
R=50;//ohm
Vm=150;//V
omega=100*%pi;//
f=omega/2/%pi;//Hz
Vrms=Vm/2;//V
Vav=Vm/%pi;//V
Irms=Vm/2/R;//A
disp(Irms,"rms value of current (A)");
Iav=Vm/%pi/R;//A
disp(Iav,"Average value of current (A)");
Kf=Irms/Iav;//Form Factor
disp(Kf,"Form Factor")
