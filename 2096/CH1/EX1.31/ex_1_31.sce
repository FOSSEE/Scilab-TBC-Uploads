//Example 1.31// output
clc;
clear;
close;
t=1;//assume
I1= 2*sin(2*t)+0.5*sin(10*t);// input current equation
t1=0.3;//time constant in seconds
Io= ((sin(2*t)- atan(2*t1))/(sqrt(1+(2*t1)^2)))+ ((sin(10*t)- atan(10*t1))/(sqrt(1+(10*t1)^2)));//output current equation
disp(" output current equation is  0.857sin(2t-30.96)+0.316sin(10t-71.56)")
