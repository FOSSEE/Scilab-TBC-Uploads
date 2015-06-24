clc;
clear;
m=36;//kg
acc=7;//ft/sq sec
W=m*9.81;
disp("W=")
disp(W)
//F=W+m*acc
//1 ft= 0.3048 m
F=W+(m*acc*0.3048);
disp("N",F,"F=")
