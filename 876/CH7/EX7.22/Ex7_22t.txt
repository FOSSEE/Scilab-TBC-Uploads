//caption:find frequency time period of the system
//Ex7.22
clc
clear
close
n=30//reading of digital frequency counter
F=10^6//gate time period(in second)
T=1/F
t=n*T
disp(t,'frequency time period of the system(in second)=')