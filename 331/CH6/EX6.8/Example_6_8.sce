//Caption: Exponential Distribution
//Example6.8
//Page183
clear;
clc;
//Example6.8(a): The probability that the execution time of programs < 4 minutes
T = 5; //Average execution time of the programs 
X1 = 4;
F = 1-exp(-X1/T); 
disp(F,'The probability that the execution time of programs < 4 minutes P(X<=4) is =');
//Example6.8(b): The probability that the execution time of programs > 6 minutes
X2 =6;
F = 1-exp(-X2/T);
disp(1-F,'The probability that the execution time of programs > 6 minutes P(X>=6) is =');
//Result
//The probability that the execution time of programs < 4 minutes P(X<=4) is =   
//     0.5506710  
//The probability that the execution time of programs > 6 minutes P(X>=6) is =   
//    0.3011942 