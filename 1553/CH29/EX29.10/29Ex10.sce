//Chapter 29 Ex10
clc;
clear;
close;
facevalue=100;
sellAmt=5000;
stock1=12/100;
marketvalue1=156;
stock2=8; stock3=9; //the 2 stocks at which the man invests
marketvalue2=90; marketvalue3=108;
increaseIncome=70;
SPsellAmt=sellAmt*(marketvalue1/facevalue);
income=(stock1*sellAmt);
investStock2=(income+increaseIncome-(SPsellAmt*(stock3/marketvalue3)))/(stock2/marketvalue2-(stock3/marketvalue3));
investStock3=SPsellAmt-investStock2;
mprintf("The money invested at %.0f stock is Rs.%.0f\n and the money invested at %d stock is Rs.%.0f",stock2,investStock2,stock3,investStock3);
