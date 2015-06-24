// Example 2.9 :time
clc;
close;
format('v',6)
clear;
// given :
v=10;//voltage in volts
r1=500;//resistance in ohms
is=0;//current in amperes
r=700;//resistance in ohms
c=100;//capacitance in micro farads
x=1/(r*c*10^-6);//variable
i=30;//current in mA
y=(i*10^-3)-(v/r1);//variable
t=-((log(y*(r/v))));//time in seconds
t1=t/x;//time in seconds
disp(t1,"time is ,(seconds)=")

