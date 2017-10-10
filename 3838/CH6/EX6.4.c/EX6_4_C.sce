//example 6.4.C
//check the signal is periodic or not
clc ;
n=-15:0.01:15;
y =(1+cos(2*(%pi)*n/8)/2);
xlabel('n')
ylabel('x(n)')
plot(n,y);
disp ( 'Plot  shows that given signal is periodic of fundamental period=4 samples' ) ;
