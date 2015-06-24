//Initialization of variables
R=400 // N
F2=200 //N
Theta1=((120*%pi)/180) //radians
Theta2=((20*%pi)/180) //radians
Theta=Theta1-Theta2 //radians
//Calculation
F=sqrt(R^2+F2^2-(2*R*F2*cos(Theta))) //N Applying the Rule of Cosine
Theta_r=asin((400*sin(Theta))/F) //radians Applying the rule of sines
Theta_R=(Theta_r*180)/%pi
//Result
clc
printf('The resultant of the force system is:%f N \n',F) //N
printf('The Angle between F and 200N force is :%f degrees \n',Theta_R) //degrees


