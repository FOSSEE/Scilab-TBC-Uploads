//example 2.2.a
//check the signal is periodic or not
clc ;
t =-15:0.01:15;
y =(2*cos((2)*(%pi)*t/3))+(3*cos((2)*(%pi)*t/7));
plot(t,y);
disp ( 'Plot  shows that given signal is  periodic with periodicity=21' ) ;
