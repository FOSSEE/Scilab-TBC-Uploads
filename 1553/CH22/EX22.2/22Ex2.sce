//chapter 22 Ex 2

clc;
clear;
close;
p=8000; n=2; r=15;
amount=p*((1+r/100)^n)*((1+(1/3)*r/100));
CI=amount-p;
printf("The Compound Interest is Rs. %3.0f",CI);
