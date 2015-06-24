//Example 9.5: angle and relative intensity
clc;
clear;
close;
//given data :
disp("part (a)")
format('v',5)
m=1;
l=633*10^-9;// in m
f=5*10^6;// in Hz
v=1500;//in m/s
n=1.33;// for water
A=v/f;
theta=asind((l/(n*A)));
disp(theta,"angle (degree) =  ")
disp("part (b)")
format('v',6)
del_n=10^-5;
L=1*10^-2;// in m
lamda=633*10^-9;// in m
eta=(%pi^2*del_n^2*L^2)/lamda^2;
disp(eta,"The relative intensity = ")

