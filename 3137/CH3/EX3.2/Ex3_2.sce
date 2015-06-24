//Initilization of variables
F1=50 //N
F2=100 //N
F3=30 //N
//Calculation
//The book has a misprint for squareroot of 1^2
F1x=F1/sqrt(2) //N 
F1y=F1/sqrt(2) //N
F2x=-(F2*3)/sqrt(10) //N
F2y=(-F2)/sqrt(10) //N
F3x=F3/sqrt(5) //N
F3y=(-F3*2)/sqrt(5) //N
Fx=F1x+F2x+F3x //N
Fy=F1y+F2y+F3y //N
R=sqrt(Fx^2+Fy^2) //N
theta=atan(Fy/Fx) //radians
theta_x=180+(theta*180)/%pi //degrees
//Result
clc
printf('The resultant is:%f N\n',R) //N
printf('The resultant makes an angle of:%f degrees',theta_x)  //degrees
