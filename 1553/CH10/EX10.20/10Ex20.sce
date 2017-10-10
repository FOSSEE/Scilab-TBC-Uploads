//chapter 10 Ex 20

clc;
clear;
close;
spends=75/100; inc=20/100; expPercent=10/100;
original=100;
expAmt=original*spends;
saving=original-expAmt;
newIncome=original*(1+inc);
newExp=(1+expPercent)*expAmt;
newSaving=newIncome-newExp;
incSaving=newSaving-saving;
incPercent=(incSaving/(1-spends));
mprintf("The increase in percentage is %d percent",incPercent);
