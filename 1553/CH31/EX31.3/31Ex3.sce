//chapter 31 Ex 3

clc;
clear;
close;
S={'1','2','3','4','5','6'};
E={'3','6'};
sizeS=size(S,"c"); sizeE=size(E,"c");
prob=sizeE/sizeS;
printf("The probability of getting multiple of 3 is %0.2f",prob);
