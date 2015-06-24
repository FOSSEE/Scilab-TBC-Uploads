// Example 15.28
// Determine the stability of the system.
  
clear;clc
xdel(winsid());
mode(0);


z=%z

D=z^3+6*z^2+8*z-0.04;  // characteristic equation after simplification
routh_t(D)
disp("There is sign change in the first column, hence the system is unstable")
