//example 6.4.A
//check the signal is periodic or not
clc ;
n=-15:0.01:15;
y =sin((6*(%pi)*n/7)+1);
xlabel('n')
ylabel('x(n)')
plot2d(n,y);
disp ( 'Plot  shows that given signal is periodic of fundamental period=7 samples' ) ;
