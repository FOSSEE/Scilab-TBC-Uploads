// Example 2.8:equation of current and time
clc;
close;
clear;
format('v',6)
// given :
v=100;//voltage in volts
r=100;//resistance in ohms
l=0.2;//inductance in henrty
T=1/(l/r);//calculating time in seconds
t=500;//time in micro seconds
i1=1-exp(-T*t*10^-6);//current in amperes
disp(i1,"current is (when t=500 micro seconds),(A)=")
v2=50;//voltage in volts
x=v2/r;//variab;e
x1=x*((v2/r)+i1);//variable 
t1=t+(10^6*(x1/500));//time in seconds
disp(ceil(t1),"time at which current will be zero is,(micro-seconds)=")
//time is caluclated wrong in the textbook as they had not added the values
