//Example 1.27 // maximum time constant
clc;
clear;
close;
//given data :
f1=90;//cycles per seconds
f=120; // frequency response in cylcle per second
w=2*%pi*f; // rad/sec
I=0.96
a=(1/I)^2;
b=sqrt(a)
t=(b-1)/w;
tl=atan(2*(%pi)*f1*t);//
tla=(1/(2*%pi*f1))*tl;// time lag in seconds
disp(t,"maximum time constant,t(sec) = ")
disp(tla,"time lag at 90 cycles per seconds in seconds")
