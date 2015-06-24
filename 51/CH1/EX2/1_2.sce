clc;
clear;
exec ("C:\Program Files\scilab-5.3.0\bin\TCP\1.2data.sci");
W=m*9.81;
disp("W=")
disp(W)
//F=W+m*acc
//1 ft= 0.3048 m
F=W+(m*acc*0.3048);
disp("N",F,"F=")
