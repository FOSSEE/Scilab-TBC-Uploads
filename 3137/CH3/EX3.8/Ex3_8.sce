//Initilization of variables
F1=50 //lb
F2=100 //lb
theta1=((45*%pi)/180) //radians
//Distance from point O
x1=5 //ft
x2=4 //ft
//Calculation
F_x=F1-(F2*cos(theta1)) //lb
F_y=F1-(F2*sin(theta1)) //lb
R=sqrt(F_x^2+F_y^2) //lb
M_O=F1*x1-(x2*F1) //lb-ft
//Applying Varignons Theorem
x=M_O/R //ft
//Result
clc
printf('The resultant of the force system is:%f lb\n',R) //lb
printf('The Moment about point O is:%f lb-ft\n',M_O) //lb-ft
printf('The Resultant acts at %f feet from point O ft',x) //ft
