clear;
clc;
close;
disp("Example 11.6")

g=9.8 //in m/s^2
Is=400 //in s

delv1=g*Is*log(1/0.1) //for pmf=0.9
delv2=g*Is*log(1/0.05) //for pmf=0.95
delp=(delv2-delv1)/delv1*100
disp(delp,"% improvement in delv :")