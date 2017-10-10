//Chapter 29 Ex2
clc;
clear;
close;

facevalue=100; //since the stock is calculated over 100
marketvalue=107; //given
brokerage=1/2; //value is in percentage
purchaseAmt=3200;
cashfacevalue=marketvalue+brokerage; //cash required to purchase Rs.100 stock
cashpurchaseAmt= cashfacevalue*purchaseAmt/facevalue;
mprintf("The cash required to purchase Rs.3200 stock is Rs.%.0f",cashpurchaseAmt);
