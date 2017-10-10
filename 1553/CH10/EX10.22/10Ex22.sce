//chapter 10 Ex 22

clc;
clear;
close;
dec=10/100; numInc=30/100;
original=100; num=100;
totalsale=original*num;
newtotal=original*(1-dec)*(1+numInc)*100;
incRevenue=((newtotal-totalsale)/totalsale)*100;
mprintf("The increase in revenue is %d percent",incRevenue);
