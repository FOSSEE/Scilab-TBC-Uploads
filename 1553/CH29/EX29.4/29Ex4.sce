//Chapter 29 Ex4
clc;
clear;
close;

facevalue=100; //since the stock is calculated over 100
marketvalue=106; //given
stock=8;       //value is in percentage
purchaseAmt=2500;
incomefacevalue=stock; //since the income is directly calculated on stock
incomepurchaseAmt= incomefacevalue*purchaseAmt/facevalue;
mprintf("The cash required to purchase Rs.2500 stock is Rs.%.0f",incomepurchaseAmt);
