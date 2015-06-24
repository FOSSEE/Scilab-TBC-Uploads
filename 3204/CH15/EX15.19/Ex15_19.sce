// Initilization of variables
v=100*(1000/3600) // m/s // or 100 km/hr
r=250 // m // radius of the road
g=9.81 // m/s^2 // acc due to gravity
// Calculations
// The angle of banking is given by eq'n,
theta=atand((v^2)/(g*r)) // degree 
// Results
clc
printf('The angle of banking of the track is %f degree \n',theta)
