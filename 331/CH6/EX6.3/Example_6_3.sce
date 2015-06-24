//Caption: Cumulative distribution of the binomial distribution
//F(X,n,p)
//Example6.3
//Page176
clear;
clc;
//(a). Probability of nil project in time
X1 = 0;// nil project
n = 5; //number of trials
Pr = 0.9; //Probability of success in each binomial trial
Ompr = 1-Pr; //Probability of failure in each binomial trial
[P1,Q1]=cdfbin("PQ",X1,n,Pr,Ompr);
disp(P1,'Probability of zero head P(X=0,10,0.5)=')
//(b). two projects in time
X2 = 2;// two projects
P2 = (factorial(n)/(factorial(X2)*factorial(n-X2)))*(Pr^X2)*(Ompr^(n-X2));
disp(P2,'Probability of three heads P(X=2,10,0.5)=')
//(c). at most one project in time
X3 = 1;
[P3,Q3]=cdfbin("PQ",X3,n,Pr,Ompr);
disp(P3,'Probability of atmost 2 heads P(X<=1,10,0.5)=')
//(d). at least two projects in time
disp(1-P3,'Probability of atleat 3 heads P(X>=2,10,0.5)=')
//Result
//Probability of zero head P(X=0,10,0.5)=   
//     0.00001  
//Probability of three heads P(X=2,10,0.5)=   
//     0.0081  
//Probability of atmost 2 heads P(X<=1,10,0.5)=   
//     0.00046  
//Probability of atleat 3 heads P(X>=2,10,0.5)=   
//     0.99954  