//Exa 4.18
clc;
clear;
close;
//Given data :
r=2/2/100;//m
d1=3.5;//m
d2=5;//m
d3=8;//m
epsilon_o=8.854*10^-12;//permitivity
CN=2*%pi*epsilon_o*1000/log((d1*d2*d3)^(1/3)/r);//F
disp(CN*10^6,"Capacitance of line(micro F)");
