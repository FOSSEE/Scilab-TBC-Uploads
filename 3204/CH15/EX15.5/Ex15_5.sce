// Initilization of variables
v=10 // m/s // speed of the car
r=200 // m // radius of the road
t=15 // seconds
// Calculations
omega=(v/r) // radian/seconds // angular velocity of the car
// Velocity in x & y direction is given by eq'n
v_x=omega*r*sind(omega*(180/%pi)*t) // m/s // value of v_x is -ve but we consider it to be +ve for calculations
v_y=omega*r*cosd(omega*(180/%pi)*t) // m/s
// Acceleration in x & y direction is given by
a_x=omega^2*r*cosd(omega*(180/%pi)*t) // m/s^2 // value of a_x is -ve but we consider it to be +ve for calculations
a_y=omega^2*r*sind(omega*(180/3.14)*t) // m/s^2 // value of a_y is -ve but we consider it to be +ve for calculations
a=sqrt(a_x^2+a_y^2) // m/s^2 // total acc
phi=atand(a_y/a_x) // degrees // direction of acceleration
// Components in tangential and normal directions
// Velocity
v_n=0 // m/s
v_t=v // m/s
// Acceleration
a_n=v^2/r // m/s^2 // normal acc
a_t=0 // tangential acc
// angular position of the car after 15 sec 
theta=omega*(180/%pi)*t // degrees
// Results
clc
printf('The component of velocity in X direction (v_x) is %f m/s \n',v_x)
printf('The component of velocity in Y direction (v_y) is %f m/s \n',v_y)
printf('The component of acceleration in X direction (a_x) is %f m/s^2 \n',a_x)
printf('The component of acceleration in Y direction (a_y) is %f m/s^2 \n',a_y)
printf('The total acceleration is %f m/s^2 and its direction is %f degrees \n',a,phi)
printf('The normal acceleration is %f m/s^2 and tangential acceleration is %f m/s^2 \n',a_n,a_t)
