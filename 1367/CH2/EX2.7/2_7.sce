//Find Minimum Uncertainity in Position
//Ex:2.7
clc;
clear;
close;
h=6.62*10^-34;//planck's constant in Js
p=10^-27;//uncertainity in momentum in kg m/s
x=h/(2*3.14*p);//uncertainity in position in m
disp(x,"Minimum Uncertainity in Position (in m) = ");