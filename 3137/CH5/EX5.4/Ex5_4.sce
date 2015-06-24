//Initilization of variables
Fx=1000 //lb
Fy=1000 //lb
costheta=9/15
cosbeta=12/15
sintheta=4/5
sinbeta=3/5
//Calculations
//Matrix solution
A=[costheta -cosbeta;sintheta sinbeta] 
B=[-1000;1000]
X=inv(A)*B
//Result
clc
printf('Thus force in AB is %i lb compression and BC has %i lb compression',X(1),X(2))
