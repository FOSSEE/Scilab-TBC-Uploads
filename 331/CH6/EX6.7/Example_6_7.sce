//Caption: Exponential Distribution
//Example6.7
//Page183
clear;
clc;
//Example6.7(a): The probability that the service time of the terminal Less than 0.5 hr
Mean = 30; //Service rate of the terminal per day
Mean = Mean/24; //Service rate of the terminal per hour
X1 = 0.5;
F = 1-exp(-Mean*X1); 
disp(F,'The cumulative probability distribution P(X<=0.5) is =');
//Example6.7(b): The probability that the service time of the terminal greate than 0.75 hr
X2 = 0.75;
F = 1-exp(-Mean*X2);
disp(1-F,'The cumulative probility distribution P(X>=0.75) is =' );
//Result
//The cumulative probability distribution P(X<=0.5) is = 0.4647386  
// 
//The cumulative probility distribution P(X>=0.75) is =  0.3916056  