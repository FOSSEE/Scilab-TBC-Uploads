//Example 8.4: The multiplication
clc;
clear;
close;
format('v',5)
//given data :
eta=40/100;//
e=1.6*10^-19;// in J
h=6.626*10^-34;//in Js
c=3*10^8;// in m s^-1
lamda=1.3*10^-6;// in m
P_in=0.3*10^-6;// in W
I=6*10^-6;// in A
M=(I*h*c)/(P_in*eta*e*lamda);
disp(M,"The multiplication factor,M = ")
