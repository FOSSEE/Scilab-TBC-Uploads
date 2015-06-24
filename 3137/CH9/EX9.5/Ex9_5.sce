//Initilization of variables
mu1=0.2 //coefficient of friction between wedges and A
mu2=1/4 //coefficient of friction between wedges 
F=20 //tonnes
//Calculations
//Using the matrix method to solve
//Summing forces in vertical and horizontal direction
A=[1,-(mu1*10+1)/(sqrt(101));0, (10-mu1*1)/sqrt(101)] //force matrix
B=[mu2*F*1000;F*1000] //lb
//Solving both matrices
R=inv(A)*B //lb
//Result
clc
printf('The forces N2 and P are %ilb and %ilb respectively',R(2),R(1))
//Decimal accuracy causes discrepancy in answers
