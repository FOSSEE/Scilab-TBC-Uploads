//chapter 31 Ex 4

clc;
clear;
close;

E={'(2,6)','(3,5)','(3,6)','(4,4)','(4,5)','(4,6)','(5,3)','(5,4)','(5,5)','(5,6)','(6,2)','(6,3)','(6,4)','(6,5)','(6,6)'};
sizeS=6*6; //rolling 2 dice
sizeE=size(E,"c");
prob=sizeE/sizeS;
printf("The probability of getting total more than 7 is %0.3f",prob);
