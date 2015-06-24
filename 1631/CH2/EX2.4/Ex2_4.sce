//Caption: Probability
//Example 2.4
//page no 44
//find the probability 
clc;
clear;
whiteballs=4;
blackballs=3;
pa1=whiteballs/(whiteballs+blackballs);//probability of first ball is white
pa2=(whiteballs-1)/(whiteballs+blackballs-1);//probability of second ball is white
pa3=(blackballs)/(whiteballs+blackballs-2);//probability of third ball is black
required_probability=pa1*pa2*pa3;
disp(required_probability,"probability of first two balls are white and third ball is black");

