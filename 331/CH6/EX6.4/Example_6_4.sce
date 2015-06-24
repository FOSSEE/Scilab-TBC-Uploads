//Caption: Poisson distribution
//Example6.4
//Page179
clear;
clc;
//(a): Exactly 0 customer will arrive in 10 minutes interval
X1= 0; //no. of customer
Mean = 4;//mean arrival rate of 4 per 10 minutes
[P1,Q1]=cdfpoi("PQ",X1,Mean)
disp(P1,'Exactly 0 customer will arrive P(X=0,4) is =')
//(b): Exactly 2 customers will arrive in 10 minutes interval
X2 =2; //no. of customer
P2 = exp(-Mean)*(Mean^X2)/(factorial(2))
disp(P2,'Exactly 2 customer will arrive P(X=2,4) is =')
//(c): at most 2 customers will arrive in 10 minutes interval
[P3,Q3]=cdfpoi("PQ",X2,Mean)
disp(P3,'Atmost 2 customer will arrive P(X<=2,4) is =')
//(d): at least 3 customers will arrive in 10 minutes interval
X3 =3;
P4 = 1-P3
disp(P4,'At least 3 customer will arrive P(X>=3,4) is=')
//Result
//Exactly 0 customer will arrive P(X=0,4) is =   
// 
//    0.0183156  
// 
// Exactly 2 customer will arrive P(X=2,4) is =   
// 
//    0.1465251  
// 
// Atmost 2 customer will arrive P(X<=2,4) is =   
// 
//    0.2381033  
// 
// At least 3 customer will arrive P(X>=3,4) is=   
// 
//    0.7618967  