//Example 8.1: The photon energy and optical power
clc;
clear;
close;
//given data :
format('v',5)
disp("part (a)")
h=6.626*10^-34;// in Js
c=3*10^8;// in ms^-1
E=1.52*10^-19;// in J
lamda=((h*c)/E)*10^6;
disp(lamda,"The photon energy,(micro-m) = ")
disp("part (b)")
e=1.6*10^-19;// in J
Ip=3*10^6;// in A
E=1.52*10^-19;// in J
eta=70/100;
R=(eta*e)/E;
P_in=(Ip/R)*10^-6;
disp(P_in,"The optical power,(micro W)")
