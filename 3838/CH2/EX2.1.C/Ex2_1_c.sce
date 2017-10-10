//example 2.1.c
//check the signal is periodic or not
clc ;
t =-15:0.01:15;
y =exp(-(2*%i*%pi*t)/7);
plot(t,y);
disp ( 'Plot  shows that given signal is  periodic with periodicity=7' ) ;
