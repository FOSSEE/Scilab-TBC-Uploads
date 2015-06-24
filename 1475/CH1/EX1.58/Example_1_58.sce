// Example 1.58 An  unbiased die is thrown 
clc;
clear;
p=1/6;
Ex=p*(1+2+3+4+5+6);
Ey=p*(1+2+3+4+5+6);
Ez=p*(1+2+3+4+5+6);
Ew=p*(1+2+3+4+5+6);
disp(Ex+Ey+Ez+Ew,"Mathematical expectation of the sum is the sum of mathematical expectations for 4 dice respectively (Es)=",Ex,"Mathematical Expectation of the number of points (Ex)=",p,"Variable x can take any of the values with probability (p)= ");
