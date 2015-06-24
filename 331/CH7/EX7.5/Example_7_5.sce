//Caption: Centrel Limit Theorem
//Example7.5
//Page205
clear;
clc;
n = 36; //Sample Size
u = 100; //Population Mean
Sig = 121;//Population variance
Std = sqrt(Sig);//Population standard deviation
S = Std/sqrt(n);
//(a). Probability that the sample mean greater than 105 trips
X1 = 105;
[P1,Q1]=cdfnor("PQ",X1,u,S);
disp(Q1,'The Probability that the Sample Mean will be more than 105 is P(X>=105)=')
//(b). Probability that the sample mean less than 102 trips
X2 = 102;
[P2,Q2]=cdfnor("PQ",X2,u,S);
disp(P2,'The Probability that the Sample Mean will be less than 102 is P(X<=102)=')
//(c). Probability that the sample mean in between 101 trips and 103 trips
X3 = 101;
X4 = 103;
[P3,Q3]=cdfnor("PQ",X3,u,S);
[P4,Q4]=cdfnor("PQ",X4,u,S);
disp(P4-P3,'The Probability that the Sample Mean in between 101 trips and 103 trips is P(101<=X<=103)=')
//Result
//The Probability that the Sample Mean will be more than 105 is P(X>=105)=   
//    0.0031930  
//The Probability that the Sample Mean will be less than 102 is P(X<=102)=   
//    0.8623436  
//The Probability that the Sample Mean in between 101 trips and 103 trips is P(101<=X<=103)=   
//    0.2418387  