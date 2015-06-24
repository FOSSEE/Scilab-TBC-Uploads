//Exa 4.13
clc;
clear;
close;
//Given Data :
format('v',5);
d=300;//in cm(spacing)
r=1;//in cm
epsilon_o=8.854*10^-12;//constnt
C=%pi*epsilon_o/log(d/r);//in Farad per meter
disp(C*30*1000*10^6,"Capacitance for 30 km line(in uF) :");