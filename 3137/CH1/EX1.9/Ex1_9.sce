//Initilization of variables
F1=90 //lb
theta1=((40*%pi)/180) //radians
theta2=((30*%pi)/180) //radians
//Calculations
R_x=0 //lb
R_y=20 //lb
//Taking the sum of forces in the X-Direction
P=((F1*cos(theta1))/cos(theta2)) //lb
//Taking the sum of the forces in the Y-Direction
F=(P*sin(theta2))+(F1*sin(theta1))-20 //lb
//Results
clc
printf('The value of P is:%f lb\n',P) //lb
printf('The value of F is:%f lb',F) //lb
