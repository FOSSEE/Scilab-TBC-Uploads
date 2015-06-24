//Example 4 //  peroid ,maximum velocity and acceleration
clc;
clear;
close;
a=3;//cm
b=4;//cm
A=sqrt(a^2+b^2);//cm
w=2;//sec^-1
T=(2*%pi)/w;//seconds
um=w*A;//cm/s
am=w^2*A;//cm/s^2
disp(T,"time period is ,(seconds)=")
disp(um,"maximum velocity is,(cm/s)=")
disp(am,"maximum acceleration is,(cm/s^2)=")
