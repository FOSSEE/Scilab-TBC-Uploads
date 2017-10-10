//chapter 22 Ex 5

clc;
clear;
close;
rate=5/100;
t=3; SIAmt=1200; 
p=SIAmt/(t*rate);
Amt=p*(1+rate)^t;
CI=Amt-p;
mprintf("The compound interest is Rs.%d",CI);
