//example 2.2.b
//check the signal is periodic or not
clc ;
t =-15:0.01:15;
y =(2*cos(3*t))+(3*sin(7*t))
plot(t,y);
disp ( 'Plot  shows that given signal is  periodic with periodicity=2%pi' ) ;
