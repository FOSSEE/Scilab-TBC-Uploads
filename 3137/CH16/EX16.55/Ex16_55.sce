//Initilization of variables
m=8 //kg
n=90 //rpm
g=9.8 //m/s^2
//Calculations
Fg=m*g //N
w=2*%pi*n/60 //rad/s
//using equations of motion
By=m*g //N
//Solving for Bx and C
A=[1,1;-0.3,0.9]
B=[m*0.3*w^2;By*0.3]
C=inv(A)*B //N
//Result
clc
printf('The solution is Bx=%f N ,By=%f N and C=%f N',C(1),By,C(2))
