//Initilization of variables
m=8 //kg
n=90 //rpm
g=9.8 //m/s^2
r=0.3 //m
//calculations
w=2*%pi*n/60 //rad/s
//Using equations of motion
C=(m*g*0.3+m*r*w^2*r)/1.2 //N
Bx=C-m*r*w^2 //N
By=m*g //N
//Result
clc
printf('The solution is Bx=%f N ,By=%f N and C=%f N',Bx,By,C)
