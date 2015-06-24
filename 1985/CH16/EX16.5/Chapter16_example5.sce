clc
clear
//Input data
n=(1/6)//Efficiency
T=82//Temperature to which the sink is reduced in K
//Solving two equations
//5T1=6T2
//2T1=3T2-246
A=[5 -6
   2 -3]//Coefficient matrix
B=[0
   -246]//Constant matrix
X=inv(A)*B//Variable matrix

//Output
printf('The temperature of the source is %3.0f K \n The temperature of the sink is %3.0f K',X(1),X(2))
