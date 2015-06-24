//Initilization of variables
W=200 //lb
Fapp=300 //lb
mu=0.3 //coefficient of friction
theta=30 //degrees
//Calculations
//Summing forces in the plane parallel to the slope
F=-(W*sind(theta)-Fapp*cosd(theta)) //lb
N1=(W*cosd(theta)+Fapp*sind(theta)) //lb
//Max value obtained
Fprime= mu*N1
//Result
clc
printf('The value of F and N1 are %flb and %flb respectively and the maximum value obtained is %flb',F,N1,Fprime)
