//chapter 21 Ex 4

clc;
clear;
close;
Sum=800; amount=920; t=3; rIncrease=3;
sInterest=amount-Sum;
rate=(sInterest*100)/(Sum*t);
rNew=(rate+rIncrease);
sInterestNew=(Sum*rNew*t)/100;
aNew=Sum+sInterestNew;
printf("The new amount is Rs. %d",aNew);
