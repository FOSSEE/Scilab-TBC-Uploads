// Exa 2.4
clc;
clear;
close;
// Given data
Am= 205.3*10^-6;// in F
A=  201.4*10^-6;// in F
epsilon_o= Am-A;
epsilon_r= epsilon_o/A*100;// in %
disp(epsilon_r,"Percentage relative error")
