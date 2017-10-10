//example 2.1.a
//check the signal is periodic or not
clc ;
t = -15:0.01:15;
y =2*(cos( t/4 ));
plot (t ,y ) ;
xtitle('plot of function 2*cos(t/4)')
xlabel('time-->')
disp ( 'Plot  shows that given signal is periodic with period T=8%pi' ) ;
