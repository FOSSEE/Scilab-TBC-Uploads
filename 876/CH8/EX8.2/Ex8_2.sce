//caption:Find peak to peak amplitude of the signal and frequency of the signal
//ex8.2
clc
clear
close
V=0.5//vertical attenuation(in V/division)
n=4//number of divisions of vertical axis
P=V*n
disp(P,'peak to peak amplitude of the signal(in V)=')
T=P*n
f=1/T
disp(f,'frequency of the signal(in Hz)=')