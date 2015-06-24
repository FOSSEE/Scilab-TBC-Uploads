//Caption: Probability
//Example 2.7
//page no 45
//find the probability 
clc;
clear;
whiteballs=3;
redballs=2;
totalballs=whiteballs+redballs;
pw1=whiteballs/totalballs;//probability of first ball is white
pr2=redballs/(totalballs-1)//conditional probability event second ball is red with first white
probability=pw1*pr2//probability of second ball is red with first ball is white
disp(probability,"probability of first ball is white and second ball is red");
