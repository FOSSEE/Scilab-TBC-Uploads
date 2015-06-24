//Example 15.6
//comparison of sensivity of the two system
clear;clc;
xdel(winsid());
//k1 andk2 are series blocks of the transfer function
k1=100
k2=100
//transfer function of fig.15.5
T1=k1*k2/(1+(0.0099*k1*k2))
//transfer function of fig.15.6
T2=(k1/(1+(0.09*k1)))*(k2/(1+(0.09*k2)))
disp("both transfer function are equal")
//sensitivity of the transfer function T1 with respect to k1
T11=1/(1+(0.0099*k1*k2))
//sensitivity of the transfer function T2 with respect to k1
T12=1/(1+(0.09*k1))
disp("The system of fig 15.6 is 10 times more sensitive than system of fig 15.5 with respect to variations in k1")
