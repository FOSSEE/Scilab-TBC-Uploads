//Chapter 29 Ex9
clc;
clear;
close;

shares=25;
rateDividend=9/100;
rateInterest=10/100;
price1share=(shares*rateDividend)/rateInterest;
mprintf("The price of each share is Rs.%.2f",price1share);
