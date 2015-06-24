
//Caption: Probability
//Example 2_1b
//page no 43
//Find the probability Getting black ball
clc;
clear;
redballs=3;
whiteballs=4;
blackballs=5;
//Probability Getting black ball
prob=blackballs/(redballs+whiteballs+blackballs);
p=1-prob;
disp("Probability not getting black ball");
disp(p,"P(B~)=");
