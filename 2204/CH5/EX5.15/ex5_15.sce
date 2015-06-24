// Exa 5.15
clc;
clear;
close;
// Given data
R = 15;// in k ohm
R = R *10^3;// in ohm
C = 0.01;// in µF
C = C * 10^-6;// in F
f_c = 1/(2*%pi*R*C);// in Hz
f_c= round(f_c);
disp(f_c,"Cut off frequency in Hz is");
Omega_c = 2*%pi*f_c;// in rad/sec
disp(Omega_c*10^-3,"The value of omega_c in k rad/sec is");

// Note: There is calculation error to find the value of omega_c. So the answer in the book is wrong
