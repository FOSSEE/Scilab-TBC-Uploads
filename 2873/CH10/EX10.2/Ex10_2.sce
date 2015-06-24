// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 10 Example 2")
A=40*10^-4;//area of indicator diagram in m^2
l=8*10^-2;//length of indicator diagram in m
D=15*10^-2;//bore of cylinder in m
L=20*10^-2;//stroke in m
k=1.5*10^8;//spring constant in pa/m
N=100;//pump motor rpm
disp("reciprocating pump is work absorbing machine having its mechanism similar to the piston-cylinder arrangement in IC engine.")
disp("mean effective pressure(mep)=A*k/l in pa")
mep=A*k/l 
disp("indicator power(IP)=Ap*L*mep*N*1*2/60 in W")
disp("(it is double acting so let us assume total power to be double of that in single acting)")
Ap=%pi*D^2/4
IP=Ap*L*mep*N*2/60
disp("so power required to drive=88.36 KW")
