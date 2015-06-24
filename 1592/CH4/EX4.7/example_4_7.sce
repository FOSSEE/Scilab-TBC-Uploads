//Scilab Code for Example 4.7 of Signals and systems by
//P.Ramakrishna Rao
clear;
clc;
syms t;
A=2;
//x(t)=20*sinc(10*t);
disp("Total Energy of the signal:");
q=integrate('A^2','w',-5,5);
disp(q,'Ex');
