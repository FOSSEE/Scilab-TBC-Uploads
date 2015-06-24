//caption:Find peak amplitude and frequency of the signal
//Ex8.7
clc
clear
close
V=0.5//vertical attenuator(in V/division)
Vo=10^-6//horizontal attenuator(in second/division)
n=6//number of divisions on vertical axis
N=5//number of division for complete one cycle
V1=V*n
Vp=V1/2
disp(Vp,'peak amplitude(in V)=')
T=Vo*N
f=1/T
disp(f,'frequency of the signal(in Hz)=')