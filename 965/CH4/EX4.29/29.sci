clc;
clear all;
disp("Heat rate & energy")
A=5;//m^2
k=1.2;// W/(m.C)
a=1.77*10^(-3);//m^2/h
//t =(120-100*x+24*x^2+40*x^3-30*x^4
//gradT=-100+48*x+120*x*x-120*x^3;
//d2T=48+240*x-360*x*x

x=0;
t=120-100*x+24*x^2+40*x^3-30*x^4;
gradT=-100+48*x+120*x*x-120*x^3;
Qin=-k*A*gradT;
disp("W",Qin," heat entering the slab Qin =")
x=0.5;
gradT=-100+48*x+120*x*x-120*x^3;
Qout=-k*A*gradT;
disp("W",Qout," heat leaving the slab Qout =")

Qs=Qin-Qout;
disp("W",Qs," heat stored in the unit time Qs =")

x=0;
d2T=48+240*x-360*x*x;
Tt=a*d2T;
disp("C/h",Tt,"rate of temperature change at inlet =")

x=0.5;
d2T=48+240*x-360*x*x;
Tt=a*d2T;
disp("C/h",Tt,"rate of temperature change at outlet =")
//d3T =240-720x =0
x=240/720;//m
disp("m",x,"point where rate of heating/cooling is maximum x =")
