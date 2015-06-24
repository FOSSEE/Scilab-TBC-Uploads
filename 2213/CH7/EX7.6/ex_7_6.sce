//Example 7.6: Retardation
clc;
clear;
close;
//given data :
format('v',6)
S=4;// in km
Vs=45;// in km/h
Ts=(S*3600)/Vs; // in sec
D=30;// duration of stop in sec
T=Ts-D;// in sec
Vm=70;// Maximum speed in km/h
alfa=1.5;// in km/h/sec
A=((Vm*T)-(S*3600))/Vm^2;
B=1/(2*alfa);
Beta=1/(2*(A-B));
disp(Beta,"Retardation(km/h/sec) = ")
