//Example 16// frequency
clc;
clear;
close;
l=1;//m
m1=0.5;//kg
tn=200;//N
m=m1/l;//kg/m
n=((1/(2*l))*sqrt(tn/m));//Hz
disp(n,"frequency is ,(Hz)=")
w=2*%pi*n;//
disp("ratio of three frequencies is "+string(w)+" : "+string(2*w)+" : "+string(3*w)+"")
