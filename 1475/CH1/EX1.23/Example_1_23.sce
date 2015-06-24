//Example 1.23 If 10 persons are arranged at random
clear;
clc;
N1=factorial(10);
disp(N1,"total no. of ways in which 10 persons are arranged in a line  =");
M1= factorial(9)* factorial(2);
disp(M1,"No. of favourable cases such that two persons will be next to each other in a line= ");
N2= factorial(9);
disp(N2,"total no. of ways in which 10 persons are arranged in a ring  =");
M2= factorial(8)* factorial(2);
disp(M2,"No. of favourable cases such that two persons will be next to each other in a ring= ");
P1=M1/N1;
P2=M2/N2;
disp(P2,"Probability that two persons will be next to each other in a ring of 10 persons= ",P1,"Probability that two persons will be next to each other in a line of 10 persons= ");

