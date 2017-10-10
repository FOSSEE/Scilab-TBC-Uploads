clc
clear
mprintf('Mechanical vibrations by G.K.Grover\n Example 1.5.1\n')
//given data
//x1=a*sin(W1*t)
//x2=b*sin(W2*t)
//calculations
a=1.90//amplitude of first wave in cm
b=2.00//amplitude of second wave in cm
W1=9.5//frequency of first wave in rad/sec
W2=10.0//frequency of second wave in rad/sec
xmax=b+a//maximum amplitude of motion in cms
xmin=abs(a-b)//minimum amplitude of motion in cms
f=abs(W1-W2)/(2*%pi)//beat frequency in Hz
t=1/f//time period of beat in sec
//output
mprintf('The maximum amplitude of motion is %4.4f cms\nThe minimum amplitude of motion is %4.4f cms\n The beat frequency is %4.4f Hz\n the time period is %4.4f sec',xmax,xmin,f,t)
