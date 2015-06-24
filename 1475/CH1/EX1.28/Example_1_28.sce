//Example 1.28  Four Cards are drawn at random from a full pack.
clc;
clear;
N=(52*51*50*49);
disp(N,"total no. of ways in which 4 cards are drawn  =");
M1= (52*39*26*13);
disp(M1,"No. of favourable cases with cards of 4 different suits =");
P1=M1/N;
M2=(52*36*22*10);
P2=M2/N;
disp(M2,"No of favourable cases with cards of different suits and different denominations =")
disp(P2,"The required Probability with cards of different suits and different denominations",P1," The required Probability with cards of 4 different suits = ");
