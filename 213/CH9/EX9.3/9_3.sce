//To find the angle turned
clc
//Given:
alpha=18*%pi/180 //radians
//Solution:
//Maximum velocity is possible when
theta1=0,theta2=180 //degrees
//Calculating the angle turned by the driving shaft when the velocity ratio is unity
theta3=acos(sqrt((1-cos(alpha))/(sin(alpha)^2)))*180/%pi //degrees
theta4=180-theta3 //degrees
//Results:
printf("\n\n Angle turned by the driving shaft when the velocity ratio is maximum, theta = %d degrees or %d degrees.\n",theta1,theta2)
printf(" Angle turned by the driving shaft when the velocity ratio is unity, theta = %.1f degrees or %.1f degrees.\n\n",theta3,theta4)