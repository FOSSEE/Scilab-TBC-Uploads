//Example 1.27 A box contains twenty tickets of identical appearance
clc;
clear;
N=(factorial(20)/(factorial(3)*factorial(17)));
disp(N,"total no. of ways in 3 tickets are chosen at random =");
M= (18+16+14+12+10+8+6+4+2);
disp(M,"No. of favourable cases with numbers in arithmetic progression are =");
P=M/N;
disp(P," The required Probability is = ");
