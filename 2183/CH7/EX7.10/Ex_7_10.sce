//Example 7.10 // Bandwidth
clc;
clear;
close;
//given data :
t_tr=100;// in ps
tau_rc=100;// in ps
BW=(1/(2*%pi*(t_tr+tau_rc)*10^-12))*10^-9;
disp(BW,"Bandwidth,BW(G bit/s) = ")
