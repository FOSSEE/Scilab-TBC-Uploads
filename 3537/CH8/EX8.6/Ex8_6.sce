//Example 8_6
clc();
clear;
//To calculate the intensity level
I=8*10^-5                   //units in walt per meter square
I0=10^-12                  //units in decibels
In=10*log10(I/I0)
printf("Intensity level=%.3f dB",In)
