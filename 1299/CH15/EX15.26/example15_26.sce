// Example 15.26
// Constructing Routh array in scilab
  
clear;clc
xdel(winsid());
mode(0);

A=[5 -6 -12;-1 1 2;5 -6 -11]
B=eye(3,3)
s=%s
C=s*B-A
D=s^3+5*s^2+5*s+1;  // characteristic equation after simplification
routh_t(D)
disp("No sign change in the first column, hence the system is asymptotically stable")


