clc;
clear all;
disp("to find Depth")
a=2.75*10^(-3);//m^2/h
ti=5.4;// degree C
ta=-6;// degree C
t=0;// degree C
tau=9.5;// hours


T1=(t-ta)/(ti-ta);
erfM=T1;
M=0.5;// from tables
x=2*M*(a*tau)^0.5;
disp("m",x,"x =")



