//Ex 12

clc;
clear;
close;
n1=80;c1=13.50;
n2=120;c2=16;
profitPercent=16;
cp_200=n1*c1+n2*c2;
sp=(100+profitPercent)/100*cp_200;
rate=sp/(n1+n2);
printf("The rate of SP of mixture is %3.2f per kg",rate);
