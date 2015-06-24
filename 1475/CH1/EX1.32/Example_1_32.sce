//Example 1.32 10 identical balls are distributed at random into 4 boxes ar marked A B C D
clc;
clear;
N=(factorial(13)/(factorial(3)*factorial(10)));
disp(N,"total no. of possible ways of distribution =");
M= 1;
disp(M,"No. of favourable cases such that 4 boxes contain respectively 2,4,4,0 identical balls =");
P=M/N;
disp(P," The required Probability is = ");
