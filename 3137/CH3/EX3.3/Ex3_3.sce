//Initilization of variables
F1=70 //lb
F2=100 //lb
F3=125 //lb
theta1=0 //radians
theta2=((10*%pi)/180) //radians
theta3=((30*%pi)/180) //radians
//Calculations
Fx=F1-(F2*cos(theta3))-(125*sin(theta2)) //lb
Fy=125*cos(theta2)-(100*sin(theta3)) //lb
R=sqrt(Fx^2+Fy^2) //lb
theta=atan(Fy/Fx) //radians
theta_x=180+(theta*180)/%pi //degrees
//Result
clc
printf('The resultant of the force system is:%f lb\n',R) //lb
printf('The resultant is at %f with respect to the X-Axis degrees',theta_x) //degrees
