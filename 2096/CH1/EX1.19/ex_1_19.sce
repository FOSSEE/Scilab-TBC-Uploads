//Example 1.19.// calculate the temperature indicated 
clc;
clear;
close;
//given data :
Iin=160; // in celcius
t1=10; // in seconds
t2=5;// in seconds
I=30; // in celcius
Io=Iin+(I-Iin)*exp(-t1/t2);
disp(Io,"thermometer reading,Io(celcius) = ")
