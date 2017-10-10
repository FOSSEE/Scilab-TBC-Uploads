//Ex 5

clc;
clear;
close;
lossPercent=5; 
spOld=1140;
gainPercent=5;

spNew=(spOld/(100-lossPercent))*(100+gainPercent);
printf("The new Selling Price is Rs. %d",spNew);
