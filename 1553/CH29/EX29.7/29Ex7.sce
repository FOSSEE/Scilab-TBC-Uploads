//Chapter 29 Ex7
clc;
clear;
close;

facevalue=10; //since the stock is calculated over 100
discount=3/4;
brokerage=1/4;
shares=96;

cost1share=facevalue-discount+brokerage; //cash required to purchase Rs.100 stock
costshares= cost1share*shares;
mprintf("The cost of %.0f shares is Rs.%.0f",shares,costshares);
