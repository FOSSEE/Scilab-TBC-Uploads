//chapter 10 Ex 31

clc;
clear;
close;
redPercent=(25/4)/100; more=120;
redRate=1-redPercent; //this term has to be multiplied by original rate that is found below
originalRate=(more*(1/redRate-1));
reducedRate=originalRate*redRate;
mprintf("The reduced rate is Rs. %.2f per kg",reducedRate);
