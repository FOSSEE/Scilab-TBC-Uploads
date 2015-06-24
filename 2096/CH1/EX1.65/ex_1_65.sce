// Example 1.65. turning moment
clc, clear
// given :
l=0.03; // in m
B=0.09; // in Wb/m^2
I=0.01; // in A
N=100; // number of turn
T=(N*B*I*l^2);
disp(T,"turning moment,T(N-m) = ")
