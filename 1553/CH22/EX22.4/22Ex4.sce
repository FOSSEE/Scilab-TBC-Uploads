//chapter 22 Ex 4

clc;
clear;
close;
p=16000; t=3; //since quarterly compounded
r=5;//since quarterly compounded
amount=(p*(1+r/100)^t);
CI=amount-p;
printf("The Compound Interest is Rs. %d",CI);
