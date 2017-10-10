//chapter 24 Ex 3

clc;
clear;
close;

l=13; b=9; w=75/100; //converting into meter
rate=12.4;
area=l*b;
lCarpet=area/w;
cost=lCarpet*rate;
mprintf("The cost for carpeting is Rs.%.2f",cost);
