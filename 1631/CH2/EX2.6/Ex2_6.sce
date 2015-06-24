//Caption: Probability
//Example 2.6
//page no 45
//find the probability 
clc;
clear;
//Probability of solving the problem
PA=3/4;
PB=2/3;
PC=1/4;
//Probability of not not able solving the problem
PNA=1-PA;
PNB=1-PB;
PNC=1-PC;
//probability that no one will solve the problem
probability_notsolve=PNA*PNB*PNC;
//probability that problem willbe solved
probability_solve=1-probability_notsolve;
disp(probability_solve,"probability that problem willbe solved");
