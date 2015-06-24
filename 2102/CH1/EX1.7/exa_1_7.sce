// Exa 1.7
clc;
clear;
close;
// Given data
format('v',13)
ni= 1.4*10^18;//in /m^3
N_D= 1.4*10^24;//in /m^3 
n=N_D;
p= ni^2/n;// in /m^3
nbyp= n/p;
disp(nbyp,"The ratio of electron to holes concentration is : ")
