//Scilab Code for Example 1.13 of Signals and systems by
//P.Ramakrishna Rao
clc;
clear;
//Discrete-time sequence plot
clc
A=10;
t=0:1/1000:1;
x=A*sin(2*%pi*100*t);
q=plot2d3(t,x);
disp('displaying a function plot on discrete time scale that has a sampling frequency of 1000 samples ps');
