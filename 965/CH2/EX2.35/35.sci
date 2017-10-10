clc;
clear all;
disp("heat loss per length")
r1=10*10^(-3);//m
r2=20*10^(-3);//m
r3=(20+30)*10^(-3);//m
t1=600;// degree C
t3=1000;// degree C
kB=0.2;// W/(m*C)
Ql=2*3.1416*(t1-t3)/((log (r3/r2))/kB);
disp("W/m",Ql,"heat transfer per unit length = ")
