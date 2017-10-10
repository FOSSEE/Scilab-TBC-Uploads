//Ex 18

clc;
clear;
close;
lossPercent=20;
gainPercent=5;
spIncreased=100;
cpnew=spIncreased/((100+gainPercent)-(100-lossPercent))*100;
printf("The new cost price of article is Rs. %d",cpnew);
