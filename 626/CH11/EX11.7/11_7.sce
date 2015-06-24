clear;
clc;
close;
disp("Example 11.7")

g=9.8 //in m/s^2
Is=420 //in s
the=90 //in degree
tb=30 //in s
gavg=9.65 //in m/s^2
MR=0.1
delv1=-g*Is*log(MR) //in m/s
delv2=-g*Is*log(MR)-gavg*tb
delp=abs(delv2-delv1)/delv1*100
disp(delp,"% reduction in terminal speed :")