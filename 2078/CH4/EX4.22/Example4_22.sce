//Exa 4.22
clc;
clear;
close;
//Given data :
d1=8;//m
d2=6;//m
epsilon_o=8.854*10^-12;//permitivity
r=3*5/2*10^-3;//m
C=4*%pi*epsilon_o/log(2^(1/3)*d1/r*((d1^2+d2^2)/(4*d1^2+d2^2)^(1/3)));//F/m
C100=C*100*1000*10^6;//microF
disp(C100,"Capacitance of 100 km line(micro Farad) : ");
//answer in the textbook is wrong.
