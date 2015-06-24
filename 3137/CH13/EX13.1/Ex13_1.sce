//Initilization of variables
W=2 //lb
F=1.5 //lb
g=32.2 //ft/s^2
//Angles are with respect to the plane
theta1=10 //degrees
theta2=30 //degrees
//Calculations
//Now here the forces are considered as parallel and perpendicular to the plane 
//Applying Newtond Principle
ax=(g/2)*(F*cosd(theta1)-(W*sind(theta2))) //ft/s^2
N1=(2*cosd(theta2)-(F*sind(theta1))) //lb
//result
clc
printf('The force on the particle is %flb\n The acceleration is %fft/s^2',N1,ax)
