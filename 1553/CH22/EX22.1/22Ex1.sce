//chapter 22 Ex 1

clc;
clear;
close;
p=7500; n=2; r=4;
amount=p*((1+r/100)^n);//formula for compound interest
CI=amount-p;
printf("The Compound Interest is Rs. %d",CI);

