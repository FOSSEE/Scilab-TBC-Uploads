// Initilization of variables
v_A=5 // m/s // speed of ship A
v_B=2.5 // m/s // speed of ship B
theta=135 // degree // angle between the two ships
// Calculations
// Here,
OA=v_A // m/s
OB=v_B // m/s
// The magnitude of relative velocity is given by cosine law as,
AB=sqrt((OA^2)+(OB^2)-(2*OA*OB*cosd(theta))) // m/s
// where AB gives the relative velocity of ship B with respect to ship A
// Applying sine law to find the direction, Let alpha be the direction of the reative velocity, then
alpha=asind((OB*sind(theta))/(AB)) // degree
// Results
clc
printf('The magnitude of relative velocity of ship B with respect to ship A is %f m/s \n',AB)
printf('The direction of the relative velocity is %f degree \n',alpha)
