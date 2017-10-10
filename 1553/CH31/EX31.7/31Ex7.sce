//chapter 31 Ex 7

clc;
clear;
close;
totalCards=52; random=2; Black=26; queen=4;
sizeS= factorial(totalCards)/(factorial(totalCards-random)*factorial(random));
sizeE1=(factorial(Black)/(factorial(Black-random)*factorial(random)));
sizeE2=(factorial(queen)/(factorial(queen-random)*factorial(random)));
prob1=sizeE1/sizeS;
prob2=sizeE2/sizeS;
probBoth=prob1*prob2;

probTotal=prob1+prob2-probBoth;
printf("The probability that either both cards are black or both are queen is %0.3f",probTotal);
