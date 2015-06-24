//Example 22 // frequency
clc;
clear;
close;
k=100;//N/m
m=100;//gm
n1=((1/(2*%pi))*sqrt(k/(m*10^-3)));//sec^-1
m1=100;//gm
m2=200;//gm
mu=((m1*m2)/(m1+m2))*10^-3;//kg
fr=((1/(2*%pi))*sqrt(k/mu));//sec^-1
disp(n1,"in first case frequency is,(sec^-1)=")
disp(fr,"in second case frequency is,(sec^-1)=")
