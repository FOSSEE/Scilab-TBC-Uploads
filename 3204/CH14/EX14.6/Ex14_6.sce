// Initilization of variables
S=50 // m // height of the tower
v=25 // m/s // velocity at which the stone is thrown up from the foot of the tower
g=9.81 // m/s^2 // acc due to graity
// Calculations
// The equation of time for the two stones to cross each other is given as,
t=S/v // seconds
S_1=(1/2)*g*t^2 // m // from the top
// Results
clc
printf('The time (t) at which the two stones cross each other is %f seconds \n',t)
printf('The two stones cross each other (from top) at a distance of %f m \n',S_1)
