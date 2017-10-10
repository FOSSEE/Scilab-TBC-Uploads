//example 1.19<e>
//determine whether the following signals are power or energy signal power and energy
clc ;
t=0:0.01:100;
x=t;
T=2;
P=(integrate('t^2','t',0,T))/(T);
disp(P,'The power of the signal is:');
disp('As t tends to infinity energy also tends to infinity but power remains finite hence it is power signal');
