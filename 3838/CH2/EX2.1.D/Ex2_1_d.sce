//example 2.1.d
//check the signal is periodic or not
clc ;
t =-15:0.01:15;
y =3*(cos((5*t)+(%pi/6)));
plot(t,y);
disp ( 'Plot  shows that given signal is  periodic with periodicity=2%pi/5' ) ;
