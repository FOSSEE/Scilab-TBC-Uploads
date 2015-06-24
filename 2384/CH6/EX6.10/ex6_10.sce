// Exa 6.10
clc;
clear;
close;
format('v',6)
// Given data
N = 100;
I = 20;// in A
V = 210;// in V
pf = 0.8;// in lad
Er = 350;// in rev
a = 3.36;// assumed
Et = (a*3600)/3600;// in kWh
// 1 kWh = 100;//  revolution
Et = Et*N;// revolution
// Percentage error
PerError = ((Er-Et)/Et)*100;// in %
disp(PerError,"The percentage error in % is");
