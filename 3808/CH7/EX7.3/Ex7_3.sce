//Chapter 07: Discrete Probability

clc;
clear;

//Part a
no_four_digits=10**4              //no of ways to choose 4 digits by the product rule

//since only 1 entry is correct and wins the prize ,it is inferred that there is only 1 possible way to choose all the digits correctly
no_correctentry=1               //no of ways to choose all 4 digits correctly
prob_winning=no_correctentry/no_four_digits       //probability of player winning the large prize

disp(,prob_winning,'Probability that a player wins the large prize is')

//Part b
//to win small prize player must correctly choose exactly 3 of 4 digits

no_correctentry=36       //no of ways to choose 4 digits with exactly three of the four being correct
prob_winning=no_correctentry/no_four_digits       //probability of player winning small prize

disp(,prob_winning,'Probability that a player wins the small prize is')
