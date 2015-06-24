//Chapter 10, Problem 17
clc;
V2=4;                   //output voltage
V=27;                   //voltage gain in decibels
V1=V2/(10^(V/20));      //calculating input voltage using logarithm
printf("Input voltage = %f V",V1);
