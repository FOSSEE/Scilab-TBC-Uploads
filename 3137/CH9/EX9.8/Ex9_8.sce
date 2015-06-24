//Initilization of variables
W=350 //lb
theta=30 //degrees
phi=15 //degrees
//Calculations
//Solving by the matrix method
A=[cosd(theta) sind(phi);-sind(theta) cosd(phi)]
B=[W*sind(theta);W*cosd(theta)]
an=inv(A)*B //lb
//Result
clc
printf('The value of P and R are %flb and %flb respectively',an(1),an(2))
