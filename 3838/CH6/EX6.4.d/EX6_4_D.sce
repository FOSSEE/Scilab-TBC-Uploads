//example 6.4.d
//check the signal is periodic or not
clc ;
n=-15:0.01:15;
y =(cos(7*%pi*n)+%i*sin(7*%pi*n));
xlabel('n')
ylabel('x(n)')
plot(n,y);
disp ( 'Plot  shows that given signal is periodic of fundamental period=2 samples' ) ;
