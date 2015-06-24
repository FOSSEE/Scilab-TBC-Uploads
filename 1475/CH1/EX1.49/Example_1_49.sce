// Example 1.49 A bag contains 8 red and 5 white balls.
clc;
clear;
N1=(factorial(13)/(factorial(10)*factorial(3)));
M1=(factorial(8)/(factorial(0)*factorial(8)))*(factorial(5)/(factorial(2)*factorial(3)));
N2=(factorial(10)/(factorial(7)*factorial(3)));
M2=(factorial(8)/(factorial(5)*factorial(3)))*(factorial(2)/(factorial(0)*factorial(2)));
disp((M1/N1)*(M2/N2),"Probability that first drawing will give 3 white balls and the second 3 red balls=",M2, "No. of ways to select 3 red balls from remaining 8 red and 2 white balls=",N2,"No . of ways of selecting 3 balls of remaining 10 balls =",M1, "No. of ways to select 3 white balls from  8 red and 5 white balls=",N1,"No . of ways of selecting 3 balls of remaining 13 balls =");
