//Chapter 12
//page no 486
//given
clc;
clear all;
Ncto=50;
b=1.07*10^-2;
m=0.05;
CTO=10*log10(Ncto*(1.5*b*m)^2);
printf("\n CTO distortion for 50 channel optical system = %0.1f dB\n",CTO);   
//Answer in the book is misprinted
//The solution in the book is calculated without multipication of Ncto
