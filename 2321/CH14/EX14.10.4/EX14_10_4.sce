//Example No. 14.10.4
clc;
clear;
close;
format('v',6);
ht=100;//m(transmitter height)
d=80;//km(receiver height)
hr=(d/4.12-sqrt(ht))^2;//m(range)
disp(hr,"Required height of receiving antenna in meter : ");
