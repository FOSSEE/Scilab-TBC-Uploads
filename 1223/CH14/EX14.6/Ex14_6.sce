clear;
clc;
//Example 14.6
Iq=19*10^-6;
C1=30*10^-12;
SR=Iq/C1;
SR=SR*10^-6;
printf('\nslew rate=%.2f V/micros\n',SR)
