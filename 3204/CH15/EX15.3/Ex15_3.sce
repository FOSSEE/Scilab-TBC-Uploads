// Iintilization of variables
r=250 // m // radius of the curved road
a_t=0.6 // m/s^2 // tangential acceleration
a=0.75 // m/s^2 // total acceleration attained by the car
// Calculations
a_n=sqrt(a^2-a_t^2) // m/s^2
v=sqrt(a_n*r) // m/s
// Using v=u+a*t
u=0
t=v/a_t // seconds
// Now using v^2-u^2=2*a*s
s=v^2/(2*a_t) // m
// Results
clc
printf('The distance  traveled by the car is %f m \n',s)
printf('The time for which the car travels is %f seconds \n',t)
