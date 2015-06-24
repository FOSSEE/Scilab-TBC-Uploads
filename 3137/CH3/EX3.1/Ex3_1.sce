//Initilization of variables
F1=150 //lb
F2=200 //lb
F3=80 //lb
F4=180 //lb
theta1=((30*%pi)/180) //radians
theta2=((150*%pi)/180) //radians
theta3=((240*%pi)/180)  //radians
theta4=((315*%pi)/180)  //radians
//Calculations
F1x=F1*cos(theta1) //lb
F1y=F1*sin(theta1) //lb
F2x=F2*cos(theta2) //lb
F2y=F2*sin(theta2) //lb
F3x=F3*cos(theta3) //lb
F3y=F3*sin(theta3) //lb
F4x=F4*cos(theta4) //lb
F4y=F4*sin(theta4) //lb
Fx=F1x+F2x+F3x+F4x //lb
Fy=F1y+F2y+F3y+F4y //lb
R=sqrt(Fx^2+Fy^2) //lb
theta=((atan(Fy/Fx))*180)/%pi //degrees
theta_R=360+theta //degrees
//Result
clc
printf('The resultant of the force system is:%f lb\n',R) //lb
printf('The resultant is at :%f degrees',theta_R) //degrees
