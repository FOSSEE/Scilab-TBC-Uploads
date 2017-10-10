//chapter 22 Ex 12

clc;
clear;
close;
amt1=7350; n1=2; amt2=8575; n2=3;
rate=((amt2-amt1)/(n2-n1)/amt1)*100;
//let sum be Rs.x
Sum=amt1/(1+(rate/100))^n1;
mprintf("The sum is Rs.%.0f",Sum); 
