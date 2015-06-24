//Initilization of variables
m=5 //kg
d=6 //m
theta1=30 //degrees
theta2=10 //degrees
u=0.2 //coefficient of friction
g=9.8 //m/s^2
F=70 //N
//Calculations
//Using free body diagram
Na=m*g*cosd(theta1)-(F*sind(theta2)) //N
//work done by each force
W=[F*cosd(theta2),-m*g*sind(theta1),0,-u*Na*d] //N.m
//Total Work Done
W_tot=W(1)+W(2)+W(3)+W(4) //N.m
//Using resultant
R=F*cosd(theta2)-(u*Na)-(m*g*sind(theta1)) //N
W_d=R*d //N.m (Work Done)
//Result
clc
printf('The work done is %f N.m',W_d)
