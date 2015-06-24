//Example sec 2.4. a
//eigen values
clear;clc;
xdel(winsid());

A=[1 -1;0 -1]
B=spec(A)
disp(B,"Eigen values=")
