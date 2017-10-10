//example 2.1.b
//check the signal is periodic or not
clc ;
t =-15:0.01:15;
a=1;//assumed the value of a to be equal to 1
y =exp(a*t);
plot(t,y);
xtitle('plot of function exp(a*t)')
xlabel('time--->')
disp ( 'Plot  shows that given signal is not periodic' ) ;
