
//Example 1.18.b// determine its reading  
clc;
clear;
close;
//given data :
Iin=160; // in celcius
t1=1.2; // in seconds
t2=2.2;// in seconds
I=20; // in celcius
Io=Iin+(I-Iin)*exp(-t1/t2);
disp(Io,"thermometer reading,Io(degree celcius) = ")
