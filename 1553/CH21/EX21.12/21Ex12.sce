//chapter 21 Ex 12

clc;
clear;
close;
Sum=1550; rate1=8/100; rate2=6/100; total=106; 
lent1=(total-(Sum*rate2))/(rate1-rate2);
lent2=Sum-lent1;
mprintf("Money lent at 8 percent is Rs.%.0f and that lent at 6 pecent is Rs.%.0f",lent1,lent2);
