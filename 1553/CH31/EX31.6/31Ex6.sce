//chapter 31 Ex 6

clc;
clear;
close;

E={'(1,3)','(3,5)','(2,2)','(2,4)','(2,6)','(3,1)','(3,5)','(3,3)','(4,2)','(4,4)','(5,1)','(5,3)','(6,2)','(6,6)'};
sizeS=6*6; //rolling 2 dice
sizeE=size(E,"c");
prob=sizeE/sizeS;
printf("The probability that sum of numbers on 2 faces is divisible by 4 or 6 id  is %0.3f",prob);
