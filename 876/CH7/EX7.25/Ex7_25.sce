//caption:find out range of measured reading
//Ex7.25
clc
clear
close
V=50//reading of voltmeter(in V)
A=0.02//accracy magnitude
Vo=V*A
Rmin=V-Vo
Rmax=V+Vo
disp(Rmax,Rmin,'range(in V)=')