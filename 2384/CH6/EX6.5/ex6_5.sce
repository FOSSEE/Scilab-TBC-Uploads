// Exa 6.5
clc;
clear;
close;
format('v',6)
// Given data
V = 230;// in V
I = 35;// in A
N = 200;
t = 64;// in sec
kwh = 500;
phi= acosd(0.8);// in °
Er = N/kwh;// in kWh
Et =  V*I*cosd(phi)*t;// in Joules
Et = Et/3600;// in W hour
Et = Et * 10^-3;// in kWh
// percentage error
PerError = ((Er-Et)/Et)*100;// in %
disp(PerError,"The percentage error in % is");
