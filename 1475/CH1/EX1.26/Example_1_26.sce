//Example 1.26 A lady declares that by testing a cup of tea with milk
clc;
clear;
N1=(factorial(10)/(factorial(5)*factorial(5)));
disp(N1,"total no. of ways in which 10 cups of tea are prepared with 5 in one way and 5 in other =");
M= 1;
disp(M,"No. of favourable cases are =");
N2= (2^5);
disp(N2, "total no. of ways if cups are presented in pair =")
P1=M/N1;
P2=M/N2
disp(P2,"The required Probability is =",P1," The required Probability is = ");
