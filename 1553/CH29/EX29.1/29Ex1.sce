//Chapter 29 Ex 1

clc;
clear;
close;

//(a)
facevalue=90;
marketvalue=100;
cost1=7200*(facevalue/marketvalue);
mprintf("Cost of Rs.7200 stock is Rs %d",cost1);

//(b)
marketvalue=100; premium=4;
facevalue=marketvalue+premium;
cost2=4500*(facevalue/marketvalue);
mprintf("\n Cost of Rs.4500 stock is Rs %d",cost2);

//(c)
marketvalue=100; discount=15;
facevalue=marketvalue-discount;
cost3=6400*(facevalue/marketvalue);
mprintf("\n Cost of Rs.6400 stock is Rs %d",cost3);
