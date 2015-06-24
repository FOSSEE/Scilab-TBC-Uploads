// Exa 2.5
clc;
clear;
close;
// Given data
PerError= 5;// in %
epsilon_r= PerError/100;
Am=20;// in H
del_A= Am*epsilon_r;
// A= Am+del_A and A= Am-del_A
disp("Limiting value of inductance is : "+string(Am)+" + "+string(del_A)+" to "+string(Am)+" - "+string(del_A)+" in Henry")

