//Caption: Probability
//Example 2.9
//page no 46
//find the probability 
clc;
clear;
PA=1/8;
PB=1/12;
probability_makingerror=1/10001;
probability=(PA*PB)/((PA*PB)+((1-PA)*(1-PB)*probability_makingerror));
disp(probability,"Probability of program is correct");
