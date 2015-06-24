clear;
clc;
close;
disp("Example 11.2")

m=1000 //in kg/s
g=9.8 //m/s^2
Is=340 //in s
F=m*g*Is
disp(F,"(a)Rocket thrust F in N :")
c=F/m
disp(c,"(b)Effective exhaust velocity c in m/s :")