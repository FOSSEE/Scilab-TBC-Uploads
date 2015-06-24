//Example 7.5: Acceleration
clc;
clear;
close;
//given data :
S=1;// in km
Vs=30;// in km/h
Ts=(S*3600)/Vs; // in sec
D=20;// duration of stop in sec
T=Ts-D;// in sec
Va=(S*3600)/T;// Average speed in km/h
Vm=1.25*Va;// Maximum speed in km/h
beta1=3;// braking retardation in km/h/sec
A=((Vm*T)-(S*3600))/Vm^2;
B=1/(2*beta1);
alfa=1/(2*(A-B));
disp(alfa,"The Acceleration,alfa(km/h/sec) = ")
