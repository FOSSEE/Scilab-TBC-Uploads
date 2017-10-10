clc;
clear all;
disp("Heat transfer flux")
L=0.2;//m
t1=1350;// degree C
tcf=40;// degree C
k=1.35;// W/(m*C)
//q=(t1-t2)/(L/k)=(t2-tcf)/(1/h)
//(1350-t2)/(0.2/1.35)=(t2-40)*(7.85+0.08*(t2-40))
//t2^2+102.5*t2-116231=0
t2=(-102.5+(102.5^2+4*116231)^0.5)/2;
q=(t1-t2)/(L/k);
disp("W/m^2",q,"rate of heat transfer = ")
