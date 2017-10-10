//Ex 20

clc;
clear;
close;
profitPercent1=25;
profitPercent2=20;
totalProfitPercent=65;

profit3=((100+totalProfitPercent)/100)/((100+profitPercent1)/100*(100+profitPercent2)/100);
profitPercent3=(profit3*100-100);
mprintf("The percentage profit earned by 3rd seller is %3.2f percent",profitPercent3);
