// Exa 3.8
clc;
clear;
close;
format('v',5)
// Given data
T = 0.3;// in sec
V = 20;// in V
Vav = 1/T*V*integrate('1','t',0,0.1)
disp(Vav,"The average value of voltage in V is");
Vrms =sqrt(1/T*V^2*integrate('1','t',0,0.1)) 
disp(Vrms,"The R.M.S value of voltage in V is");
