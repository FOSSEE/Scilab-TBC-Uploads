//chapter 21 Ex 10

clc;
clear;
close;
t=3; rateHigh=2/100; amtHigh=360;
Sum=amtHigh/(t*(1+rateHigh)-t);
mprintf("The sum is Rs.%.0f",Sum);
