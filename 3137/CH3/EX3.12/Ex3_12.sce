//Initilization of variables
F1=150 //lb
F2=200 //lb
F3=200 //lb
F4=225 //lb
M=900 //lb-ft
Theta1=(45*%pi)/180 //radians
Theta2=(30*%pi)/180 //radians
x1=3 //ft
x2=15 //ft
x3=12 //ft
x4=6 //ft
//Calculations
Fx=F1*cos(Theta1)+F2-F4*cos(Theta2) //Applying sum of all forces equal to zero in X direction
Fy=F1*sin(Theta1)-F4*sin(Theta2)+F2 //Applying sum of all forces equal to zero in Y direction
R=sqrt(Fx^2+Fy^2) //lb
theta=atand(Fy/Fx) //degrees
M_o=x1*F2-x2*F1*cos(Theta1)+x3*F1*sin(Theta1)-x4*F2+M+x4*F4*cos(Theta2)-x1*F4*sin(Theta2) //Moment about point O
x=M_o/Fy //Varignons Theorem 
//Result
clc
printf('The x intercept of resultant position is %f\n',x)
printf('The Resultant is %f lb and acts at an angle of %f degrees',R,theta)
