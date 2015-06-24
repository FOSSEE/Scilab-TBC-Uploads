//Ex:23
clc;
clear;
close;
B_s=10^6;//B.W. in Hz
a=0.5;//Roll_off of a filter
r_sym=B_s/(1+a);//Symbol rate in bps
printf("Symbol rate =%f bit/sec", r_sym);
printf("\n Symbol rate =%f Kbit/sec", r_sym/1000);