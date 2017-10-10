//Chapter 29 Ex3
clc;
clear;
close;

facevalue=100; //since the stock is calculated over 100
discount=4;
brokerage=1/4; //value is in percentage
purchaseAmt=2400;
cashfacevalue=facevalue-discount-brokerage; //cash required to purchase Rs.100 stock
cashpurchaseAmt= cashfacevalue*purchaseAmt/facevalue;
mprintf("The cash required to purchase Rs.2400 stock is Rs.%.0f",cashpurchaseAmt);
