//caption:Find value of current
//ex8.6
clc
clear
close
S=100//Y sensitivity(in mV/division)
n=5//number of divisions of vertical axis
R=4.7*10^3
P=S*n
Vrms=P/(2*sqrt(2))
i=Vrms/R
disp(i,'value of current(in A)=')