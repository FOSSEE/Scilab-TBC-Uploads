//Example 4_6
clc;
clear;close;

//Given data: 
R=4;//ohm
L=6/1000;//H
V=200;//V
alfa=0.5;//duty cycle
f=1000;//Hz

//Solution :
T=1/f;//s
E=0;//V
Imax=V/R*[(1-exp(-alfa*T*R/L))/(1-exp(-T*R/L))]-E/R;//A
Imin=V/R*[(exp(alfa*T*R/L)-1)/(exp(T*R/L)-1)]-E/R;//A
disp(Imax,"Maximum current(A)");
disp(Imin,"Minimum current(A)");
Iavg=(Imax+Imin)/2;//A
disp(Iavg,"Average load current(A)");
IL=sqrt(1/alfa/T*integrate('(Imin+(Imax-Imin)*t/alfa/T)^2','t',0,alfa*T));//A
disp(IL,"RMS load current(A)");
Iavg_in=alfa*Iavg;//A
disp(Iavg_in,"Average input current(A)");
Irms_in=sqrt(1/T*integrate('(Imin+(Imax-Imin)*t/alfa/T)^2','t',0,alfa*T));//A
disp(Irms_in,"RMS input current(A)");
