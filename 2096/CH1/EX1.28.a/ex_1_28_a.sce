//Example 1.28.a // maximum and minimum value
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
a=1/sqrt(1+(w*t2)^2);
Io=Iin*a;
Tmax=T+Io;
Tmin=T-Io;
disp(Tmax,"maximum temperature,Tmax(celcius) = ")
disp(Tmin,"minimum temperature,Tmin(celcius) = ")


