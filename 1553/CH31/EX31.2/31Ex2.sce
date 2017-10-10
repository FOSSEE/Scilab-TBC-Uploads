//chapter 24 Ex 2

clc;
clear;
close;
S={'HH','HT','TH','TT'};
E={'TT','HT','TH'};
sizeS=size(S,"c"); sizeE=size(E,"c");
prob=sizeE/sizeS;
printf("The probability of getting at most one head is %0.2f",prob);
