//Exa 4.14
clc;
clear;
close;
//Given Data :
format('v',5);
d=2.5*100;//in cm(spacing)
r=2/2;//in cm
epsilon_o=8.854*10^-12;//constnt
C=2*%pi*epsilon_o/log(d/r);//in Farad per meter
disp(C*10*1000*10^6,"Capacitance for 10 km line(in uF) :");
//Note : answer given in the book is wrong but calculated is right.