//example 1.19<d>
//determine whether the following signals are power or energy signal
clc ;
t=0:0.01:100;
x=1;
P=(integrate('1^2','t',0,1))/2;
disp(P,'The power of the signal is:');
E=(integrate('1^2','t',0,1));
disp(E,'The energy is:');
disp('As t tends to infinity energy also tends to infinity but power remains finite hence it is power signal');
