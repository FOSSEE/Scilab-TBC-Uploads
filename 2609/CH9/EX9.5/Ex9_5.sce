//Ex 9.5
clc;
clear;
close;
format('v',4);
f0=1;//kHz(Cutoff frequency)
f0dash=1.5;//kHz(Cutoff frequency)
disp("Various design parameters are :-");
//For Butterworth filter
fH=f0;//kHz
fHdash=f0dash;//kHz
K=f0/f0dash;//ratio
R=3.2;//kohm
Rdash=K*R;//kohm
disp(Rdash,"Resistance Rdash(kohm)");
disp("Use Rdash=2.2 kohm");
format('v',5);
C=0.05;//micro F//Chosen for the design
disp(C,"Capacitance(micro F)");
format('v',4);
fHdash=1/(2*%pi*Rdash*1000*C*10^-6)/1000;//kHz
disp(fHdash,"Cutoff frequency(kHz)");
