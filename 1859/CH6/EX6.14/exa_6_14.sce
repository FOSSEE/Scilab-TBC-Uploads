// Exa 6.14
clc;
clear;
close;
// Given data
p=200.62;// in ohm
q=400;// in ohm
P=200.48;// in ohm
Q=400;// in ohm
S=100.03;// in micro ohm
S=S*10^-6;// in ohm
r=700;// in micro ohm
r=r*10^-6;// in ohm
X= P*S/Q+q*r/(p+q)*(P/Q-p/q);// in ohm
disp(X*10^+6,"Unknown resistance in micro ohm")
