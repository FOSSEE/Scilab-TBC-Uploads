//Chapter 29 Ex8
clc;
clear;
close;

facevalue=25; 
premium=5;
brokerage=1/4; 
shares=88;
rateDividend=(15/2)/100; //rate is in percentage hence divided by 100
investment=2662;

cost1share=facevalue+premium+brokerage; //cash required to purchase Rs.100 stock
costshares= cost1share*shares;
facevalueAllShares=shares*facevalue;
dividendAllShares=facevalueAllShares*rateDividend;
income=dividendAllShares;

rateInterest=(income/investment)*100;

mprintf("The rate of interest on investment is Rs.%.1f percent",rateInterest);
