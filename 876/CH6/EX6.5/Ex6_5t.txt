//caption:Find resolution and voltage
//Ex6.5
clc
clear
close
N=3//bit of D/A convertor
V=5//full scale voltage(in V)
A=0.001//magnitude of accuracy
R=1/2^N
disp(R,'resolution(in V)=')
Ac=A*V
disp(Ac,'accuracy(in V)=')