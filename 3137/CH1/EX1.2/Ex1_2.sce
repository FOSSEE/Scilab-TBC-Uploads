//Initilization of variables
P=100 //lb
Q=120 //lb
theta=((30*%pi)/180) //radians
//Calculations
R_x=Q*cos(theta) //lb
R_y=Q*sin(theta)-P //lb
R=sqrt(R_x^2+R_y^2) //lb Triangle law
Theta_1=((atan(R_y/R_x))*180)/%pi //degrees
Theta_R=360+Theta_1 //degrees
//Result
clc
printf('The resultant of the force system is:%f N\n',R) //lb
printf('The resultant is at:%f degrees',Theta_R) //Degrees
