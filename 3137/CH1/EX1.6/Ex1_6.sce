//Initilization of variables
F=10 //lb
theta1=((60*%pi)/180) //radians
theta2=((45*%pi)/180) //radians
theta=theta1-theta2 //radians
//Calculation
F_OH=F/cos(theta) //lb resolving vectors
//Result
clc
printf('The component of F in the direction of OH is:%f lb',F_OH) //lb
