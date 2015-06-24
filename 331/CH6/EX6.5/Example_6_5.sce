//Caption: Poisson Distribution
//Example6.5
//Page179
clear;
clc;
//(a): Probability no piece in the sample is defective
X1= 0; //nil  defective
p= 0.04;//probability that an inspected piece will be defective
n = 25; //number of sample units
Mean = n*p;//mean of the poisson distribution
[P1,Q1]=cdfpoi("PQ",X1,Mean)
disp(P1,'No piece will be defective P(X=0,1) is =')

//(b): Probability 3 pieces in the sample will be defective
X2 = 3; //3 pieces in the sample will be defective
P2 = exp(-Mean)*(Mean^X2)/(factorial(X2))
disp(P2,'Probability 3 pieces will be defective P(X=3,1) is =')

//(c): at most 2 pieces will be defective
X3 = 2;
[P3,Q3]=cdfpoi("PQ",X3,Mean)
disp(P3,'Atmost 2 pieces will be defective P(X<=2,1) is =')

//(d): at least 3 pieces will be defective
P4 = 1-P3
disp(P4,'At least 3 pieces will be defective P(X>=3,1) is=')
//Result
//  
// No piece will be defective P(X=0,1) is =   
// 
//    0.3678794  
// 
// Probability 3 pieces will be defective P(X=3,1) is =   
// 
//    0.0613132  
// 
// Atmost 2 pieces will be defective P(X<=2,1) is =   
// 
//    0.9196986  
// 
// At least 3 pieces will be defective P(X>=3,1) is=   
// 
//    0.0803014 
