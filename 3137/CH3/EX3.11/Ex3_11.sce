//Initilization of variables
F1=150 //lb
F2=80 //lb
F3=100 //lb
F4=50 //lb
theta1=((45*%pi)/180) //radians
r=3  //units
//Calculations
Fh=F1-F3*cos(theta1) //lb
Fv=F4-F2-F3*sin(theta1) //lb
R=sqrt(Fh^2+Fv^2) //lb
//Applying the Varignons Theorem
a=(F4*r-F1*r+F2*r-F3*r)/R //units
//Result
clc
printf('The resultant of the force system is:%f lb \n',R) //lb
printf('The resultant acts at %f units form the point O',a) //units
//Negative sign indicates a negative moment caused by the resultant
