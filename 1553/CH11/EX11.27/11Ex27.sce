//Ex 27

clc;
clear;
close;
discount=1;
cp_40=36;
sp_40=40;
sp_40=(100-discount)/100*sp_40;
profitPercent=(sp_40-cp_40)/cp_40*100;
printf("The profit is %d percent",profitPercent);
