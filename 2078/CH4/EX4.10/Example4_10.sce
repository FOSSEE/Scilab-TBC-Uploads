//Exa 4.10
clc;
clear;
close;
//Given data :
r=1.2/2*10;//mm
rdash=0.7788*r;//mm
d=3.5*1000;//mm
L=2*10^-7*log(d/rdash);//H/m
Lav=1/3*(L+L+L);//H/m
d=rdash*exp(Lav/(2*10^-7)-1/3*log(2));//mm
disp(d/1000,"Spacing between adjacent conductors(m)");
