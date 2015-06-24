// Initilization of variables
r=50 // m // radius of the road
mu=0.15 // coefficient of friction between the wheels and the road
g=9.81 // m/s^2 // acc due to gravity
// Calculations
// The eq'n fo max speed of the vehicle without skidding is 
v=sqrt(mu*g*r) // m/s
// The angle theta made with the vertical while negotiating the corner is 
theta=atand(v^2/(g*r)) // degree
// Results
clc
printf('The maximum speed with which the vehicle can travel is %f m/s \n',v)
printf('The angle made with the vertical is %f degree \n',theta)
