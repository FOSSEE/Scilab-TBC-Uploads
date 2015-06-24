//Example 7.7 :stress and strain 
clc;
clear;
close;
format('v',6)
//given data :
sigma=450;//in MPa
epsilon=0.63;
sigma_t=sigma*(1+epsilon);
disp(sigma_t,"true stress,sigma_t(MPa) = ")
epsilon_t=log(1+epsilon);
disp(epsilon_t,"true strain,epsilon_t = ")
