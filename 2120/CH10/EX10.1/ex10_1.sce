//Exa 10.1
clc;
clear;
close;
// Given data
p1 = 10;// in bar
p2 = 0.5;// in bar
T1 = 179.9;// in °C
T1 = T1 +273;// in K
T2 = 81.4;// in °C
T2 = T2 + 273;// in K
Eta_carnot = (T1 - T2)/T1*100;// in %
disp(Eta_carnot,"Carnot efficiency of an engine when the steam is 0.87 dry in % is");
disp(Eta_carnot,"Carnot efficiency of an engine when the steam is dry saturated in % is"); 
T1 = T1 + 50;// in K
Eta_carnot1 = (T1 - T2) / T1*100;// in %
disp(Eta_carnot1,"Carnot efficiency of an engine when the steam is superheated in % is");
