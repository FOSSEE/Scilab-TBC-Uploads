//Example 23 // force constant and work done
clc;
clear;
close;
m1=1;//assume
m2=19;//assume
mh=1.66*10^-27;//kg
mu=((m1*m2)/(m1+m2))*mh;//kg
w=7.55*10^14;//radians/sec
k=mu*(w)^2;//N/m
disp(k,"force constant is,(N/m)=")
x=0.5;//arngstrom
wh=((1/2)*k*(x*10^-10)^2);//joule
disp(wh,"work done is ,(joule)=")
