//Example 5 // maximum velocity and acceleration
clc;
clear;
close;
A=5;//cm
T=31.4//seconds
w=(2*%pi)/T;//sec^-1
um=w*A;//cm/s
am=w^2*A;//cm/s^2
disp(um,"maximum velocity is,(cm/s)=")
disp(am,"maximum acceleration is,(cm/s^2)=")
