//Ex 5.2
clc;clear;close;
Rf=100;//kohm
C=0.1;//micro F
T=2*Rf*1000*C*10^-6;//s
disp(T*10^3,"Time period(ms)");
f=1/T;//Hz
disp(f,"Frequency(Hz) : ");
