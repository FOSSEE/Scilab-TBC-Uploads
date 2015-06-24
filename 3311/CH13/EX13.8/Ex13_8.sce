// chapter 13
// example 13.8
// Calculate the peak value of the fault current
// page-825-826
clear;
clc;
// given
I_2_t=150; // in A^2 sec
f=50; // in Hz
tc=6; // in ms
// calculate
tc=tc*1E-3; // changing unit from ms to s
// since tc=3*I^2*t/Ip^2, therefore we get,
Ip=sqrt(3*I_2_t/tc); // calculation of peak value of the fault current
printf("\nThe peak value of the fault current is \t Ip=%.2f A",Ip);
// Note :The answer vary slightly due to precise calculation