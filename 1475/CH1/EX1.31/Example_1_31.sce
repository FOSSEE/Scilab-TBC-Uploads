//Example 1.31 10 dissimilar balls are distributed at random into 4 boxes ar marked A B C D
clc;
clear;
N=4^10;
disp(N,"total no. of possible ways of distribution =");
M= (factorial(10)/(factorial(2)*factorial(4)*factorial(4)*factorial(0)));
disp(M,"No. of favourable cases such that 4 boxes contain respectively 2,4,4,0 balls =");
P=M/N;
disp(P," The required Probability is = ");
