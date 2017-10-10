//example 6_4_B
//check the signal is periodic or not
clc ;
n=-15:0.01:15;
y =cos((n/8)-(%pi));
xlabel('n')
ylabel('x(n)')
plot(n,y);
disp ( 'Plot  shows that given signal is NOT periodic ' ) ;
