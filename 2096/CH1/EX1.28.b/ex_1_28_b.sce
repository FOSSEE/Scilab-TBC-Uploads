//Example 1.28.b // phase shift and time
clc;
clear;
close;
//given data :
Iin=30; // in celcius
t1=50; // in seconds
t2=10; // in seconds
T1=520; // starting range variation of temerature
T2=580; // range variation of temperature
T=(T1+T2)/2; // mean value in celcius
w=2*%pi*(1/t1); // angular frequency of oscillation rad/sec
pi=atan(w*t2);
L=(1/w)*pi;
disp(L,"the time lag,L(seconds) = ")
