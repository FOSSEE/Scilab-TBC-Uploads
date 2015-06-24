
//Example 1.22.b// indicated temperature
clc;
clear;
close;
//given data :
Iin=140; // in celcius
t1=5; // in seconds
t2=1; // in celcius
I=15; // in celcius
Io=75; // in celcius
Io=Iin+(I-Iin)*exp(-t1/t2);
disp(Io,"thermometer reading,Io(degree celcius) = ")
