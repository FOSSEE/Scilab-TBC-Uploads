//Chapter 31 Ex7
clc;
clear;
close;
deduced=10/100;
//let amount be Rs.100
amt=100;
deducedAmt=amt*(deduced);
moneyReceived=amt-deducedAmt;
t=10/12; //converting due period in years
rate=(amt*deducedAmt)/(moneyReceived*t);
mprintf("The rate percent is %.2f percent",rate);
