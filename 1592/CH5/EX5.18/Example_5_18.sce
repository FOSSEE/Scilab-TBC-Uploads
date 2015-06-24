//Scilab Code for Example 5.18 of Signals and systems by
//P.Ramakrishna Rao
//Given signal x(n)
clear;
clc;
x=[1,2,3,4];
X=fft(x);
disp(X,'FFT of given signal is:X(0)-->X(3)')
