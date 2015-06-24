//Exa 4.7
clc;
clear;
close;
//Given Data :
format('v',9);
dia=5;//in mm
d=1.5;//in meter(spacing)
r=dia/2;//in mm
r=r*10^-3;//in meter
epsilon_o=8.854*10^-12;//constnt
C=%pi*epsilon_o/log(d/r);//in Farad per meter
disp(C*50*1000,"Capacitance for 50 km line(in Fardas) :");
//Note : answer is not accurate in the book. 