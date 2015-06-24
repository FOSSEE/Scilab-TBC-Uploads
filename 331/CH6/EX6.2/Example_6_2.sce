//Caption: Cumulative distribution of the binomial distribution
//F(X,n,p)
//Example6.2
//Page 176
clear;
clc;
//(a). Probability of 0 head
X1 = 0;// 0 head
n = 10; //number of trials
Pr = 0.5; //Probability of success in each binomial trial
Ompr = 1-Pr; //Probability of failure in each binomial trial
[P1,Q1]=cdfbin("PQ",X1,n,Pr,Ompr);
disp(P1,'Probability of zero head P(X=0,10,0.5)=')
//(b). Probability of 3 head
X2 =3;// 3 head
P2 = (factorial(n)/(factorial(X2)*factorial(n-X2)))*(Pr^X2)*(Ompr^(n-X2));
disp(P2,'Probability of three heads P(X=3,10,0.5)=')
//(c). at most 2 heads
X3 = 2;
[P3,Q3]=cdfbin("PQ",X3,n,Pr,Ompr);
disp(P3,'Probability of atmost 2 heads P(X<=2,10,0.5)=')
//(d). at least 3 heads
disp(1-P3,'Probability of atleat 3 heads P(X>=3,10,0.5)=')
//Result
//Probability of zero head P(X=0,10,0.5)=   
//    0.0009766  
//Probability of three heads P(X=3,10,0.5)=   
//    0.1171875  
//Probability of atmost 2 heads P(X<=2,10,0.5)=   
//    0.0546875  
//Probability of atleat 3 heads P(X>=3,10,0.5)=   
//    0.9453125 