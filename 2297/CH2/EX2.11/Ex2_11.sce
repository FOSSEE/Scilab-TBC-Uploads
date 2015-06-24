// Example 2.11 :average & rms value
clc;
close;
format('v',6)
clear;
// given :
vm=10;//voltage in volts
e=vm/2;//voltage in volts
t=0:2;//time range
x=intsplin(t,(5*t)^2);//variab;e
rms=sqrt(x/2);//rms value of voltage in volts
av=vm/2;//average value of voltage in volts
disp("parts (a) saw tooth wave")
disp(rms,"rms value of e is ,(V)=")
disp(av,"average value of e is ,(V)=")
t1=0;//initial time in seconds
t2=%pi;//final time in seconds
t3=2*%pi;//time interval
x=integrate('(sin(t))^2','t',t1,t2);//variable
rms=sqrt((1/(2*%pi))*x*vm^2);//rms value of voltage in volts
av=(10/(2*%pi))*integrate('sin(t)','t',t1,t2);//average value of voltage in volts
disp("parts (b) half wave rectified sine wave form")
disp(rms,"rms value of e is ,(V)=")
disp(av,"average value of e is ,(V)=")
