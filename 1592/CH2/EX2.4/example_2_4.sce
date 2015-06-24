//Scilab Code for Example 2.4 of Signals and systems by
//P.Ramakrishna Rao
clear;
clc;
//Time shifted laplace Transform
syms t y s a0;
y=laplace('t*exp(-s*a0)',t,s);
disp("Re(s)>0",y,"X(s)");
