//Caption: Sampling Distribution of Mean (when the population is Finite)
//Example7.4
//Page204
clear;
clc;
n = 36;//Sample Size
N = 1000;//Population Size
u = 40;// Population Mean
Sig = 121;//Population variance in years
Std = sqrt(Sig);//Population standard deviation in years
S = (Std/sqrt(n))*sqrt((N-n)/(N-1));//Standard deviation when the population is finite
//(a). Sample Mean lesser than 45
X1 = 45;
[P1,Q1]=cdfnor("PQ",X1,u,S);
disp(P1,'The probability that the sample mean is lesser than 45 is P(X<=45)=')
//(b). Sample Mean greater than 42
X2= 42;
[P2,Q2]=cdfnor("PQ",X2,u,Std/sqrt(n))
disp(Q2,'The probability that the sample mean is greater than 42 is P(X>=42)=')
//(c). Sample mean is inbetween 40 and 42
X3 = 40;
[P3,Q3]=cdfnor("PQ",X3,u,Std/sqrt(n))
P4 = P2-P3;
disp(P4,'The probability that the sample mean is in between 40 and 42 is P(40<=X<=42)=')
//Result
//The probability that the sample mean is lesser than 45 is P(X<=45)=   
// 
//    0.9972513  
// 
// The probability that the sample mean is greater than 42 is P(X>=42)=   
// 
//    0.1376564  
// 
// The probability that the sample mean is in between 40 and 42 is P(40<=X<=42)=   
// 
//    0.3623436