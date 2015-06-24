
//Example 1.18.a// what will be the reading of the thermometer after 1.2 seconds.
clc;
clear;
close;
//given data :
Iin=160; // in celcius
t1=1.2; // in seconds
t2=2.2;// in seconds
I=20; // in celcius
Io=Iin*(1-(exp(-t1/t2)));
disp(Io,"thermometer reading,Io(degree celcius) = ")
