//chapter 22 Ex 1

clc;
clear;
close;
p=10000; n=4;   //since half yearly, hence 2 years=4 half years
 r=2;
amount=p*((1+r/100)^n);
CI=amount-p;
printf("The Compound Interest is Rs. %3.2f",CI);
