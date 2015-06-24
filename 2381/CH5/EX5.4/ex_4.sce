//Example 4 //equation of wave propogation
clc;
clear;
close;
amp=0.02;//m
fr=110;//Hz
v=330;//m/s
w=2*%pi*fr;//s^-1
k=w/v;//constant
//y=a*sin(w*t-k*x);//refrence equation
disp("equation of wave is "+string(amp)+"*sin("+string(w)+"*t-"+string(k)+"*x)")
