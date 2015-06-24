//Example 1.25 X and Y are seated at random at a round table
clear;
clc;
N=(12*11);
disp(N,"total no. of ways in X and Y can occupy seats=");
M= (12*2);
disp(M,"No. of favourable cases such that there are 3 people between X and Y at a round table = ");
// M= (1,5),(2,6),(3,7),(4,8),(5.9),(6,10),(7,11),(8,12),(9,1),(10,2),(11,3),(12,4)
P=M/N;
disp(P,"Probability that  there are 3 people between X and Y at a round table =");
