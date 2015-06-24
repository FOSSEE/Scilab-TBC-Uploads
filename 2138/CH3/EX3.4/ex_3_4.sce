//Example 3.4 // resistance
clc;
clear;
close;
//given data :
Rt1=54.3; //  resistance in ohm
alfa=0.0043; // the resistance temperature of coeficient in per degree celcius
t1=20; // temperature in degree celcius
t2=40; // temperature in degree celcius
Rt2=(Rt1*(1+(alfa*t2)))/(1+(alfa*t1));
disp(Rt2,"resistance at 40 degree celsius,Rt2(ohm) =  ")
