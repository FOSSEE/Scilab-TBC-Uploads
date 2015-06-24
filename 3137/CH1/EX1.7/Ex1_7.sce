//Initilization of variables
weight=80 //kg
theta=((20*%pi)/180) //radians
theta_p=((70*%pi)/180)
//Calcuations
//Part (a)
F=weight*9.81 //N
R=F*cos(theta) //N
//part (b)
R_p=F*cos(theta_p) //N
//Result
clc
printf('The normal component is:%f N \n',R) //N
printf('The parallel component is:%f N',R_p) //N
