// Chapter 1
//Gain lost
//page 23
//Example no 1-13
//Given
clc;
clear;
fc=40;  //in Hz
f=10;   //in Hz
Av=-10*log10(1+(fc^2)/(f^2));
printf("\n Gain lost is %.1f dB",Av);// Result
