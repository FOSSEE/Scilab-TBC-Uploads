//Initilization of variables
F1=100 //lb
F2=80 //lb
F3=120 //lb
F4=150 //lb
theta1=((60*%pi)/180) //radians
theta2=((45*%pi)/180) //radians
theta3=((90*%pi)/180) //radians
theta4=((75*%pi)/180) //radians
//Distance from point O
x1=-5 //ft
y1=20 //ft
x2=10 //ft
y2=10 //ft
x3=25 //ft
y3=25 //ft
x4=35 //ft
y4=15 //ft
//Calculations
Fx=F1*cos(theta1)+F2*cos(theta2)+F4*cos(theta4) //lb
Fy=-F1*sin(theta1)+F2*sin(theta2)-F3-F4*sin(theta4) //lb
R=sqrt(Fx^2+Fy^2) //lb
theta=atan(Fy/Fx) //radians
theta_x=(theta*180)/%pi //degrees
M_O=-(F1*cos(theta1)*y1)+(-x1)*(F1*sin(theta1))-(x2)*(F2*cos(theta2))+(y2)*(F2*sin(theta2))-(x3*F3)-(y4*F4*cos(theta4))-(x4*F4*sin(theta4)) //lb-ft
//Applying varignons theorem
x=M_O/Fy //ft
y=-M_O/Fx //ft
//Results
clc
printf('The resultant of the force system is:%f lb\n',R) //lb
printf('The resultant acts at %f degrees with respect to X-Axis \n',theta_x) //degrees
printf('The moment about point O is:%f lb-ft \n',M_O) //lb-ft
printf('The x intercept of resultant is:%f ft\n',x) //ft
printf('The y intercept of resultant is:%f ft\n',y) //ft
//Answer for angle should be negative which has not been mentioned in the tectbook but a schematic shows the angle in fourth quadrant to clarify the doubt 
