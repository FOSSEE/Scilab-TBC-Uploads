//Example 3.4 //G factor
clc;
clear;
close;
format('v',10)
d=0.793;//in micro meter
v=%pi/2;//point of intersection
ua=0.934;//
wa=1.262;//
Y=(wa*(1+(sind(ua))*(cosd(ua))/ua));//
G=(1+((cosd(ua))^2)/Y)^(-1);//
disp(G,"G factor is")
//answer is wrong in the textbook
