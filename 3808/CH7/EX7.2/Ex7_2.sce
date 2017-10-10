//Chapter 07: Discrete Probability

clc;
clear;

//For sum to be 7 out of the total 36 equally likely possible outcomes there are 6 outcomes
//(1,6) (2,5) (3,4) (4,3) (5,2) (6,1)

total_outcomes=36            //total no of outcomes
seven_sum_outcome=6             //no of outcomes where sum of numbers appearing on dice is 7

prob_seven=seven_sum_outcome/total_outcomes

disp('Probability that 7 comes when 2 dice are rolled is')
disp(prob_seven)
