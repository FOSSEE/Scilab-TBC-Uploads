//Chapter 29 Ex5
clc;
clear;
close;

facevalue=100; //since the stock is calculated over 100
marketvalue=136; //given
stock=10;       //value is in percentage
investAmt=6800;
incomemarketvalue=stock; //since the income is directly calculated on stock
incomeinvestAmt= incomemarketvalue*investAmt/marketvalue;
mprintf("The income obtained by investing Rs.6800 is Rs.%.0f",incomeinvestAmt);
