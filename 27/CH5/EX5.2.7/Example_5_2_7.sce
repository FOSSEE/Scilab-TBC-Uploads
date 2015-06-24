clear;
clc;
close;

A=[2 1;3 4]

t=det(A)
tau=trace(A)

disp("Since t>0 and (tau)^2 - 4*t =16 >0 hence the fixed point is a node.")
disp("It is unstable since tau>0.")