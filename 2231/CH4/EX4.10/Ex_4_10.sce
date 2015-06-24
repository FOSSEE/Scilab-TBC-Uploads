//Example 4_10
clc;
clear;close;

//Given data: 
V=230;//V
Ton=25/1000;//s
Toff=10/1000;//s

//Solution :
Vavg=V*Ton/(Ton+Toff);//V
disp(Vavg,"Average load voltage(V)");
