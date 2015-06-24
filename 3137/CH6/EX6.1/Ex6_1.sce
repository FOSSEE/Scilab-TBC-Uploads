//Initilization of variables
H=30 //ft
F=150 //lb
theta1=10 //degrees
theta2=30 //degrees
theta3=60 //degrees
//Calculations
//Matrix solution of simultaneous equations
X=[cosd(theta3)*sind(theta2) -cosd(theta3)*sind(theta2);cosd(theta3)*cosd(theta2) cosd(theta3)*cosd(theta2)] 
Y=[0;F*cosd(theta1)] 
R=inv(X)*Y
//To find P,sum the forces vertically along the y-axis
P=F*sind(theta1)+2*R(1,1)*sind(theta3) //lb Copression
//Result
clc
printf('The value of A and B is %f lb and that of P is %f lb',R(1,1),P)
