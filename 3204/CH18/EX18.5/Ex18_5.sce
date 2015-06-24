// Initiization of variables
theta=30 // degrees // ange made by the ball against the wall
e=0.50
// Calculations
// The notations have been changed
// Resolving the velocity v as,
v_x=cosd(theta)
v_y=sind(theta)
V_y=v_y
// from coefficient of restitution reation
V_x=-e*v_x
// Resultant velocity
V=sqrt(V_x^2+V_y^2)
theta=atand(V_y/(-V_x)) // taking +ve value for V_x
// NOTE: Here all the terms are multiplied with velocity i.e (v).
// Results
clc
printf('The velocity of the ball is %f v \n',V)
printf('The direction of the ball is %f degrees \n',theta)
