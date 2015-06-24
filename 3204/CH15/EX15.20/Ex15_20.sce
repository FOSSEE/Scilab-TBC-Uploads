// Initilization of variables
W=10000 // N // Weight of the car
r=100 // m // radius of the road
v=10 // m/s // speed of the car
h=1 // m // height of the C.G of the car above the ground
b=1.5 // m // distance between the wheels
g=9.81 // m/s^2 // acc due to gravity
// Calculations
// The reactions at the wheels are given by te eq'ns:
R_A=(W/2)*(1-((v^2*h)/(g*r*b))) // N // Reaction at A
R_B=(W/2)*(1+((v^2*h)/(g*r*b))) // N // Reaction at B
// The eq'n for max speed to avoid overturning on level ground is,
v_max=sqrt((g*r*(b/2))/(h)) // m/s
// Results
clc
printf('The reaction at Wheel A (R_A) is %f N \n',R_A)
printf('The reaction at Wheel B (R_B) is %f N \n',R_B)
printf('The maximum speed at which the vehicle can travel without the fear of overturning is is %f m/s \n',v_max)
