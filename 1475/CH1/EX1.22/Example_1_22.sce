//Example 1.22 10 distinguishable ball are distributed at random into 4 boxes.
clc;
clear;
N=(4^10);
disp(N,"total no. of ways in which 4 boxes are selected to distribute 10 balls  =");
M= (factorial(10)/(factorial(2)*factorial(8)))*(3^8);
// M= 10C2 * 3^8
disp(M,"No. of favourable cases when a specified box recieve 2 balls out of 10, and remaining 8 balls are distributed are  ");
P=M/N;
disp(,P,"Probability that a specified box recieves exactly 2 balls   = ");
