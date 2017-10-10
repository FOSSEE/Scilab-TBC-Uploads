//chapter 4 Ex 34

clc;
clear;
close;
totalnotes=85; amount=5000; den100=100; den50=50;
notes50=(amount-den100*totalnotes)/(den50-den100);
amount50=notes50*den50;
mprintf("The required amount is Rs.%d",amount50);
