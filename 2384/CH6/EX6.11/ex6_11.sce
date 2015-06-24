// Exa 6.11
clc;
clear;
close;
format('v',6)
// Given data
I = 5;// in A
V = 230;// in V
N = 61;// number of revolution
t = 37;// in sec
// speed of the disc
discSpeed= 500;// in rev/kWh
Er = N/discSpeed;
Et = (V*I*t)/(3600*100);
// percentage error
PerError = ((Er-Et)/Et)*100;// in %
disp(PerError,"The percentage error in % is");
