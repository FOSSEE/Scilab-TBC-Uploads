// Initilization of Variables
l=1 // m // length of bar AB
v_a=5 // m/s // velocity of A
theta=30 // degree // angle made by the bar with the horizontal
// Calculations
// From the vector diagram linear velocity of end B is given as,
v_b=v_a/tand(theta) // m/s 
// Now let the relative velocity be v_ba which is given as,
v_ba=v_a/sind(theta) // m/s
// Now let the angular velocity of the bar be theta_a which is given as,
theta_a=(v_ba)/l // radian/second
// Velocity of point A
v_a=(l/2)*theta_a // m/s
// Magnitude of velocity at point C is,
v_c=v_a // m/s // from the vector diagram
// Results
clc
printf('(a) The angular velocity of the bar is %f radian/second \n',theta_a)
printf('(b) The velocity of end B is %f m/s \n',v_b)
printf('(c) The velocity of mid point C is %f m/s \n',v_c)
