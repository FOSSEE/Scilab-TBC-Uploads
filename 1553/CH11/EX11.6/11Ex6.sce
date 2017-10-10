//Ex 6

clc;
clear;
close;
sp1=27.50;
sp2=25.75;
profit1=10;
cp=(100/(100+profit1))*sp1;
profit2=sp2-cp;
profitPercent=profit2/cp*100;
mprintf("The profit percent is %d percent",profitPercent);
