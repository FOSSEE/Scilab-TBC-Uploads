// Example 6.31 Sales of a company rose 
clc
clear;
SI2=103;
SI3=150;
S2=3945000;
S3=4621000;
ES= (S2*(SI3/100))/(SI2/100);
disp(ES,"Expected sales during the thirs quarter =",S3,"Actual sales in third quarters =", S2,"Actual sales in second quarters =",SI3,"Seasonal Index for third Quarter =",SI2,"Seasonal Index for second Quarter =");
