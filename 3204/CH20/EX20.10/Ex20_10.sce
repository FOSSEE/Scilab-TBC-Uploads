// Initilization of variables
v_o=200 // m/s // initial velocity
theta=60 // degree // angle of the incline
y=5 // rise of incline
x=12 // length of incline
g=9.81 // m/s^2 // acc due to gravity
// Calculations
// The angle of the inclined plane with respect to horizontal
beta=atand(y/x) // degree
// The angle of projection with respect to horizontal
alpha=90-theta // degree
// Range is given by eq'n (ref. fig.20.14)
AB=(2*v_o^2*(sind(alpha-beta))*cosd(alpha))/(g*(cosd(beta))^2) // m
// Range AC when the short is fired down the plane
AC=(2*v_o^2*(sind(alpha+beta))*cosd(alpha))/(g*(cosd(beta))^2) // m
BC=AB+AC // m
// Results
clc
printf('The range covered (i.e BC) is %f m \n',BC)
