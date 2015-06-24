// Exa 9.3
clc;
clear;
close;
format('v',5)
// Given data
wH= '0.9*wp1';
wp2='wp1*k';
//wH= 1/sqrt(1/wp1^1+1/(k*wp1)^2)
k= sqrt(0.9^2/(1-0.9^2));
disp(k,"The value of k is : ")

