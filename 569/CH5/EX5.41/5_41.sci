// Calculate the force
clc;
g=0.055;
t=1.5*10^-3;
Eo=100;
P= Eo/(g*t);
A=25*10^-6;
F=P*A;
disp(F,'Force(N)=')