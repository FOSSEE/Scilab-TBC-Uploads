clc

q=1.6*10**-19 //C
epsilonox=8.85*10^-14//F/cm
V=5//V
d=1*10^-6//cm
A=4*10^-8//cm^2
Q=3.9*epsilonox*A*(V/d)
disp(Q,"Q in C is= ")
Qx=Q/q
disp(Qx,"Qx in electrons")
