//Example 5.5 a
//constructing Routh array in scilab
clear;clc
xdel(winsid());//close all windows
mode(0);
s=%s;
A=s^3+s^2-s+1
routh_t(A)

//Example 5.5 b

s=%s;
B=s^4-s^2-2*s+2
routh_t(B)
//in this example 0 occurs in the first column of the array
// for which system assumes any small value "eps" and computes the array automatically.
