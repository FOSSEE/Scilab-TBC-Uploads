//Example 1.19
clc;
clear;
N=(365*365*365);
//Assume 1 year = 365 days
disp(N,"total No. of  possible ways in which the 3 children have birthdays is =");
M=(365*364*363);
disp(M,"No. of favourable cases such that 3 children in a family have different birthdays= ");
P=M/N;
disp(,P,"Probability that  3 children in a family have different birthdays=");

