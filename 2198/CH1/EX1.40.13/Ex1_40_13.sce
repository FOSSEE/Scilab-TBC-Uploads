//Ex 1.40.13
clc;clear;close;
format('v',9);

//Given : 
del_n=10^15;//per cm^3
tau_p=10*10^-6;//sec
rate=del_n/tau_p;//rate of generation minority carrier
disp(rate,"Rate of generation of minority carrier(electron hole pair/sec/cm^3) : ");
