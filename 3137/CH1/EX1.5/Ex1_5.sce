//Initialization of variables
F1=26 //lb
F2=39 //lb
F3=63 //lb
F4=57 //lb
T1=((10*%pi)/180)//Radians
T2=((114*%pi)/180)//Radians
T3=((183*%pi)/180) //radians
T4=((261*%pi)/180) //radians
//Calculations
R_x=F1*cos(T1)+F2*cos(T2)+F3*cos(T3)+F4*cos(T4) //lb Resolving vectors
R_y=F1*sin(T1)+F2*sin(T2)+F3*sin(T3)+F4*sin(T4) //lb resolving vectors
R=sqrt(R_x^2+R_y^2) //lb Applying Triangle Law
theta=atan(R_y/R_x)//radians
Theta=theta*180/%pi //degrees
Theta_R=180+Theta
//Results
clc
printf('The Resultant of the force system is:%f lb\n',R) //lb
printf('The resultant is at:%f degrees',Theta_R) //degrees

