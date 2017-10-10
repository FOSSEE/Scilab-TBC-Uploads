//example 2.2.c
//check the signal is periodic or not
clc ;
t =-6:0.01:6;
y =(5*cos(4*%pi*t))+(3*sin(8*%pi*t));
plot(t,y);
disp ( 'Plot  shows that given signal is  periodic with periodicity=1/2' ) ;
