// example 1.18<c>
//determine the values of power and energy
clc ;
t =0:0.01:100;
A=1;
x=A*cos (t);
P=(integrate('(A*cos(t))^2','t',0,2*%pi ))/(2*%pi);
disp(P,'The power of the signal is:');
E=(integrate('(A*cos(t))^2','t',0,2*%pi));
disp(E,'The energy is:');
disp('As t tends to infinity energy also tends to infinity but power remains finite hence it is power signal');
