//Example 10// length
clc;
clear;
close;
l1=66;//cm
v=330;//m/s
nbs=5;//beats/sec
x=(2*(v-(nbs*2*l1*10^-2))/(v*2*l1*10^-2));//
l2=1/x;//cm
disp(l2*100,"length is,(cm)=")
