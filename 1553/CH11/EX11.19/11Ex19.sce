//Ex 19

clc;
clear;
close;
difference=10.5;
profitPercent1=25;
profitPercent2=30;
lossPercent=20;

cp=difference/((100+profitPercent1)*100-((100+profitPercent2)*(100-lossPercent)))*100*100;
printf("The cost price of article is Rs. %d",cp);
