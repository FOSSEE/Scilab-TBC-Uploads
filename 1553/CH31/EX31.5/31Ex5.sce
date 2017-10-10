//chapter 31 Ex 5

clc;
clear;
close;
totalBalls=10; white=6; Black=4; random=2;

sizeS= factorial(totalBalls)/(factorial(totalBalls-random)*factorial(random));
sizeE=(factorial(white)/(factorial(white-random)*factorial(random)))+(factorial(Black)/(factorial(Black-random)*factorial(random)));
prob=sizeE/sizeS;
printf("The probability of getting both balls of same color is %0.2f",prob);
