//Example 1.22.a // the time contant for the thermometer
clc;
clear;
close;
//given data :
Iin=140; // in celcius
t1=4; // in seconds
I=15; // in celcius
Io=75; // in celcius
a=(Io-Iin)/(I-Iin);
t2=-t1/(log(a));
disp(t2,"time constant in seconds")
