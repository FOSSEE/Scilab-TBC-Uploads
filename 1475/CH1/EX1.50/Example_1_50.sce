// Example 1.50 Four cards are drawn from a full pack
clc;
clear;
N1=(factorial(52)/(factorial(48)*factorial(4)));
M1=(factorial(13)/(factorial(1)*factorial(12)))^4;
disp((M1/N1),"Probability that  four cards are of different suits =",M1, "No. of ways in which 4 cards of different suits can be drawn from a pack  =",N1,"No . of ways of selecting 4 cards out of a pack of 52 cards =");
