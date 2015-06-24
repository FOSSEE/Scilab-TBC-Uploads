//Ex:8.16
clc;
clear;
close;
tr=30*10^-9;// rise time in s
Bw=0.35/tr;// bandwidth in Hz
printf("The bandwidth =%f MHz", Bw/10^6);