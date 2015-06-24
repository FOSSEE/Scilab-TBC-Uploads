clc;
//page 533
//problem 10.5

//Given reference frequency is fref = 10 MHz
fref = 10 * 10^6;

//Given step frequency is fstep = 100 KHz
fstep = 100 * 10^3;

//Division ratio M
M = fref/fstep;

//Required output frequency F = 100.6 MHz
F = 100.6 * 10^6;

N = F/fstep;

//Given P = 64
P = 64;

//Truncating value B = 15
B = 15;

A = N - P*B;

disp('The value of A is '+string(A));
disp('The value of B is '+string(B));
disp('The value of M is '+string(M));



