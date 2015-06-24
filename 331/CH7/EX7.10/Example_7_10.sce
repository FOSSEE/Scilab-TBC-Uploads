//Caption:Sampling Distribution of Proportion
//Example7.10
//Page213
clear;
clc;
p = 0.52;//52% of the employees will have enhanced skill
q = 1-p;
n = 49;// sample number of employees
X = 24/49; //out of 49 only 24 of them are having enhanced skill
disp(X,'Sample Mean=')
Var = p*q/n; //variance
disp(Var,'Variance is var(X/n)=')
Std = sqrt(Var); //standard deviation
disp(Std,'Standard Deviation =')
[P,Q]=cdfnor("PQ",X,p,Std);
disp(Q,'The probability that tha sample of employees have enhanced their skill is = ')
//Result
//Sample Mean=   
//    0.4897959  
//Variance is var(X/n)=   
//    0.0050939  
//Standard Deviation =   
//    0.0713714  
//The probability that tha sample of employees have enhanced their skill is =    
//   0.6639238 