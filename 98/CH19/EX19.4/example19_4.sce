//Chapter 19
//Example 19_4
//PAge 485

clear;clc;

i=7;
l=35.2;
c=0.0023*1e-6;

e=i*sqrt(l/c);
printf("Voltage across breaker = %.0f kV \n\n", e/1000);
