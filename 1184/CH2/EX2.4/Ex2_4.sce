clc;
clear;
pin=25*10^-6;
pout=1.5*10^-3;
A1=3;
total_gain=pout/pin;
printf('\nTotal gain is %.1f',total_gain);
A2=total_gain/A1;
printf('\nThe gain of second stage is %.1f',A2);
