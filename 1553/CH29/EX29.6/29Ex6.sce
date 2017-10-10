//Chapter 29 Ex5
clc;
clear;
close;

facevalue=100; //since the stock is calculated over 100
marketvalue1=105; //given
stock1=15/2;       //value is in percentage

marketvalue2=94; //given
stock2=13/2;       //value is in percentage

investAmt=marketvalue1*marketvalue2;


incomemarketvalue1=stock1; //since the income is directly calculated on stock
incomeinvestAmt1= incomemarketvalue1*investAmt/marketvalue1;


incomemarketvalue2=stock2; //since the income is directly calculated on stock
incomeinvestAmt2= incomemarketvalue2*investAmt/marketvalue2;
mprintf("The incomes are Rs.%.0f and Rs.%.2f",incomeinvestAmt1,incomeinvestAmt2);
if (incomeinvestAmt1>incomeinvestAmt2) then 
    mprintf("\n Thus the income obtained from %.2f stock at %.0f is more",stock1,marketvalue1);
else
     mprintf("\n Thus the income obtained from %.2f stock at %.0f is more",stock2,marketvalue2);
end

