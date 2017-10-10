//example 2.1.e
//check the signal is periodic or not
clc ;
t =-15:0.01:15;
y =(1+cos(2*(2*t)-(%pi/3)))/(2);
plot(t,y);
disp ( 'Plot  shows that given signal is  periodic with periodicity=%pi/2' ) ;
