//Initilization of variables
F1=280 //N
F2=130 //N
Theta1=((320*%pi)/180) //Radians
Theta2=((60*%pi)/180) //Radians
//Calculations
R_x=-F1*cos(Theta1)+F2*cos(Theta2) //N
R_y=F1*sin(Theta1)-F2*sin(Theta2) //N
R=sqrt(R_x^2+R_y^2) //N Applying Triangle Law
ThetaR=atan(R_y/R_x) //radians
Theta_R=360-(ThetaR*180/%pi) //degrees
//Result
clc
printf('The resultant of the force system is:%f N\n',R) //N
printf('The resultant is at:%f degrees',Theta_R) //degrees
//The decimal point accuracy causes discrepancy in answers
