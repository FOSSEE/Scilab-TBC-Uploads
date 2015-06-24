//Caption: Normal Distribution
//Example6.9
//Page185
clear;
clc;
//Example6.9(a):Probability that the monthly income < Rs.11,000
X = 11000;
Mean = 10000;
Std = 2000;
n = 200; //sample number of respondents
[P,Q]=cdfnor("PQ",X,Mean,Std)//Cumulative normal distribution
disp(P,'The probability that the monthly income is < Rs.11,000 is =')
disp(n*P,'The number of respondents having income is less than Rs.11,000 =')

//Example6.9(b): Probability that the monthly income > Rs.12,000
X = 12000;
[P,Q]=cdfnor("PQ",X,Mean,Std)//Cumulative normal distribution
disp(Q,'The probability that the monthly income is > Rs12,000 is =')
disp(n*Q,'The number of respondents having income is greater than Rs.12,000 =')

//Example6.9(c): Probability that the monthly income is in between Rs.7,000 and
//Rs.11,200
X1 = 11200;
X2 = 7000;
[P1,Q1]=cdfnor("PQ",X1,Mean,Std);
[P2,Q2]=cdfnor("PQ",X2,Mean,Std);
disp(P1-P2,'The probability that the monthly income in between Rs.7,000 & Rs.11,200 is =');
disp(n*(P1-P2),'The number of respondents having income in between Rs.7,000 & Rs.11,200 is =')
//Result
//The probability that the monthly income is < Rs.11,000 is =   
// 
//    0.6914625  
// 
// The number of respondents having income is less than Rs.11,000 =   
// 
//    138.29249  
// 
// The probability that the monthly income is > Rs12,000 is =   
// 
//    0.1586553  
// 
// The number of respondents having income is greater than Rs.12,000 =   
// 
//    31.731051  
// 
// The probability that the monthly income in between Rs.7,000 & Rs.11,200 is =   
// 
//    0.6589397  
// 
// The number of respondents having income in between Rs.7,000 & Rs.11,200 is =   
// 
//    131.78794