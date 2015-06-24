//Example sec 2.4.2
//eigen values
clear;clc;
xdel(winsid());

A=[0 6 -5;1 0 2;3 2 4]
B=spec(A)
disp(B,"Eigen values=")
