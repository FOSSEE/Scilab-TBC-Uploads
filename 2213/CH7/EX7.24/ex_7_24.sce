//Example 7.24: weight of the locomotive abd number of axles
clc;
clear;
close;
//given data :
W=12*30;//tonnes
we=1.04*360;//tonnes
r=5*9.81;//
G=1;//in percentage
mu=0.2;//
alpha=0.8;//
x=13.882;//
y=0.041;//
wlo=(x)/(mu-y);//in tonnes
al=20;//allowable load in tonnes
na=wlo/al;//
disp(wlo,"weight of the locomotive in tonnes")
disp(ceil(na),"number of axles required")
