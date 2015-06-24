//Example 13.2: phase change
clc;
clear;
close;
format('v',6)
//given data :
n=1.45;// index of core
a=10^-5;// in C^-1
b=5.1*10^-7;// in C^-1
lamda=.633*10^-6;// in m
// formula:- (1/L)*(del_fi/del_T)=((2*PI)/lamda)[(n/L)*(del_L/del_T)+(del_n/del_T)]
//let we assume a=del_n/del_T, b=(1/L)*(del_L/del_T), c=(1/L)*(del_fi/del_T)
c=((2*%pi)/lamda)*((n*b)+a);
disp(c,"phase change,(rad/m°C) = ")
