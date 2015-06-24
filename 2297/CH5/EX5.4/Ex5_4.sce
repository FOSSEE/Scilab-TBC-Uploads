// Example 5.4;reading
clc;
clear;
disp("part (i)")
// given :
format('v',6)
vm=100;//volts
rc=10;//ohms
im=vm/rc;//amperes
t=0:2*%pi;//time rane
x=intsplin(t,(sin(t))^2);//variable
Irms=sqrt((1/(2*%pi))*im^2*x);//current in amperes
disp(Irms,"indication of moving iron instrument is,(A)=")
disp("part (ii)")
t1=0;//time interval
t2=%pi;//time inerval
x=integrate('sin(t)','t',t1,t2);//variable
Iav=(1/%pi)*x*(im/2);//current in amperes
disp(Iav,"indication of moving coil instrument is,(A)=")
//answer of part a is calculated wrong in the textbook
