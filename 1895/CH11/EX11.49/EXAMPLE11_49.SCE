//ANALOG AND DIGITAL COMMUNICATION
//BY Dr.SANJAY SHARMA
//CHAPTER 11
//Information Theory
clear all;
clc;
printf("EXAMPLE 11.49(PAGENO 534)");

//given
P_x1 = .4//probability of first signal
P_x2 = .2//probability of second signal
P_x3 = .8//probability of third signal
P_x4 = .08//probability of fourth signal
P_x5 = .02//probability of fifth signal
n1 = 2//number of bits in code obtained from table given textbook
n2 = 3//number of bits in code obtained from table given textbook
n3 = 1//number of bits in code obtained from table given textbook
n4 = 4//number of bits in code obtained from table given textbook
n5 = 4//number of bits in code obtained from table given textbook

//calculations
L = P_x1*n1 + P_x2*n2 + P_x3*n3 + P_x4*n4 + P_x5*n5;//average codeword length per symbol
//since sigma = sqrt(summation of product of probability and (n- L)^2)
sigmasquare = P_x1*(n1-L)^2 + P_x2*(n2-L)^2 +P_x3*(n3-L)^2 + P_x4*(n4-L)^2 +P_x5*(n5-L)^2;//Variance of codewoed length

//results
printf("\n\nVariance of codeword length =%.4f",sigmasquare)
