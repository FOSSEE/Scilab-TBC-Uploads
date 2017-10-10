// example 1.19<a>
//determine whether the following signals are power or energy signal
clc ;
t =0:0.01:100;
A=1;
x=A*sin(t);
P=(integrate('(A*sin(t))^2','t',-%pi,%pi))/(2*%pi);
disp(P,'The power of the signal is:');
E=(integrate('(A*sin(t))^2','t',-%pi,%pi));
disp(E,'The energy is:');
disp('As t tends to infinity energy also tends to infinity but power remains finite hence it is power signal');
