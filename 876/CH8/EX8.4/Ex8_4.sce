//caption:Find rms value of signal under test
//ex8.4
clc
clear
close
S=100//Y sensitivity(in mV/division)
n=5//number of divisions of vertical axis
P=S*n
Vrms=P/(2*sqrt(2))
disp(Vrms,'rms value of signal under test(in V)=')