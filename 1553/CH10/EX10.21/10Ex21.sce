//chapter 10 Ex 21

clc;
clear;
close;
red=10/100;
original=100;
newSal=original*(1-red);
increase=((original-newSal)/newSal)*100;
mprintf("The percentage reduction is %.2f percent",increase);
