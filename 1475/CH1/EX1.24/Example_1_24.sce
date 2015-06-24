//Example 1.24 X and Y stand in aline with 10 other people.
clear;
clc;
N=factorial(12);
disp(N,"total no. of ways in which 12 persons are arranged in a line  =");
M= 8*(2*factorial(10));
disp(M,"No. of favourable cases such that there are 3 people between X and Y = ");
// M= (1,5),(2,6),(3,7),(4,8),(5.9),(6,10),(7,11),(8,12)
P=M/N;
disp(P,"Probability that  there are 3 people between X and Y= ");

