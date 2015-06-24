//Initilization of variables
F=150 //lb
theta1=10 //degrees 
theta2=30 //degrees
theta3=60 //degrees
//Calculations
A=[-cosd(theta3)*cosd(theta2);-sind(theta3);cosd(theta3)*sind(theta2)] 
B=[-cosd(theta3)*cosd(theta2);-sind(theta3);cosd(theta3)*sind(theta2)]
//150lb force is actually a vector
F_v=[F*cosd(theta1);F*sind(theta1);0] //lb
//Postion vector relative to C 
r=[0;30;0]
//Moment about point C is zero
//solution by matrix
X=[7.5 -7.5;13 13] 
Y=[0;4470] 
R=inv(X)*Y
A=R(1,1) //lb
B=R(2,1) //lb
//Summing forces in y direction
Cy=0.866*A+0.866*B+25.9 //lb
//Result
clc
printf('The value of A and B is %f lb and that of Cy is %f lb',A,Cy) 

