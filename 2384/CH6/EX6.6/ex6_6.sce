// Exa 6.6
clc;
clear;
close;
format('v',6)
// Given data
I = 50;// in A
V = 230;// in V
N = 61;
t = 37;// in sec
KWh = 500;
phi= acosd(1);// in °
Er = N/KWh;// in kWh
Et = V*I*cosd(phi)*t;// in Joules
Et = Et/3600;// in Wh
Et = Et*10^-3;// in kWh
// Percentage error
PerError = ((Er-Et)/Et)*100;// in %
disp(PerError,"The percentage error in % is");
