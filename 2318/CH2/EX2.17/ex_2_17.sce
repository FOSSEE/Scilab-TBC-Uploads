//Example 2.17://error
clc;
clear;
close;
i=5;//amperes
t0=0;//
t1=30/60;//
x=integrate('5','t',t0,t1);//
e=0.56;//kWh
v=(e*10^3)/x;//volts
v1=220;//volts
ae=v1*i*t1*10^-3;//actual energy
e=((e-ae)/ae)*100;//error
disp(e,"error (%) is")
