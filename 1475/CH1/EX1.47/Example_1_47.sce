//Example 1.47 A bag contains 8 white and 6 black balls
clc;
clear;
N=factorial(14)/(factorial(9)*factorial(5));
disp(N,"total no. of possible ways to draw 5 balls out of 14 is 14_C_5 =");
M1= (factorial(8)/(factorial(3)*factorial(5)));
disp(M1,"A group of 3 white balls can be drawn out of 8 in 8_C_3 ways=");
M2=(factorial(6)/(factorial(2)*factorial(4)));
disp(M2,"A group of 2 black balls can be drawn out of 6 in 6_C_2 ways=");
P=(M1*M2)/N;
disp(P," The required Probability such that 3 white and 2 black balls are selected = ");
