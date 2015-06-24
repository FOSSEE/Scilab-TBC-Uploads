//caption:find frequency of the system
//Ex7.21
clc
clear
close
n=45//reading of digital frequency counter
T=10*10^-3//gate time period(in second)
F=1/T
f=n*F
disp(f,'frequency of the system(in Hz)=')