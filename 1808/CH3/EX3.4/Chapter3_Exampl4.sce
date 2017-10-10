clc
clear
//INPUT DATA
n=1/5;//Fraction of heat input converted into power
ts=100;//Reduced sink temperature in Degree C

//CALCULATIONS
//4Th-5Tl=0
//3Th-5Tl=-500
A=[4 -5
   3 -5]//Coefficient matrix
B=[0
   -500]//Constant matrix
X=inv(A)*B//Variable matrix

//Output
printf('(a)The temperature of the source is %3.f K \n (b)The temperature of sink is %3.f K',X(1),X(2))
