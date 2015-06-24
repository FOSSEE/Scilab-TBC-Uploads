//Caption: Probability
//Example 2.1.c
//page no 43
//Find the probability 
clc;
clear;
redballs=3;
whiteballs=4;
blackballs=5;
//Probability Getting black ball
pb=blackballs/(redballs+whiteballs+blackballs);
//Probability Getting white ball
pw=whiteballs/(redballs+whiteballs+blackballs);
//Probability Getting white ball or black ball
pwb=pb+pw//  black and white are mutuallly exclusive events
disp("Probability Getting white ball or black ball will be ")
disp(pwb,"P(B+W)=")

