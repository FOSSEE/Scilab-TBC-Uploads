//caption:Find value of protection resistance
//Ex3.9
clc
clear
close
I=0.01//current through LDR(in A)
R=15//Resistance of LDR(in ohms)
V=9//supply voltage(in V)
Vo=I*R
Vp=V-Vo
R=Vp/I
disp(R,'value of protection resistance(in ohm)=')