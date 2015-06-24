//Example 20 // frequency and amplitude
clc;
clear;
close;
c=10^-4;//N-m
m1=9;//gm
m2=1;//gm
mu=((m1*m2)/(m1+m2))*10^-3;//kg
r=20;//cm
I=mu*(r*10^-2)^2;//kg-m^2
fr=((1/(2*%pi))*sqrt(c/I));//vibrations/sec
disp(fr,"frequency of vibration is ,(vibrations/s)=")
e=10^-2;//joule
thmax=sqrt((2*e)/c);//radians
disp(thmax,"amplitude is,(radians)=")
