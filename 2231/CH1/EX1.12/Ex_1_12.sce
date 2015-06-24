//Example 1_12
clc;
clear;close;

//Given data: 
I=120;//A
Gamma=180;//degree
RMS_current=I*sqrt(Gamma/360);//A
AVG_current=I*(Gamma/360);//A
FormFactor=RMS_current/AVG_current;//no unit
disp(RMS_current,"rms current (in A) : ");
disp(FormFactor,"Form Factor : ");
