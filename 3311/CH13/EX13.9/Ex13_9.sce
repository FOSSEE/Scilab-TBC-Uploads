// chapter 13
// example 13.9
// Compute the required fusing time
// page-826-827
clear;
clc;
// given
I=250; // in A (non-repetitive surge current)
f=50; // in Hz
Ip=400; // in A (peak short circuit current)
// calculate
t=1/f; // calculation of time period
I_subcycle=sqrt(I^2*(1/100)/t); // calculation of subcycle surge current rating
tc=3*I_subcycle^2/Ip^2; // calculation of required fusing time
printf("\nThe required fusing time is \t tc=%.2f ms",tc*1E3);
// Note :The formula used in the book is wrong. The value of I_subcycle also needs to be squared but is not done in the book. Thats why the answer in the book is wrong.