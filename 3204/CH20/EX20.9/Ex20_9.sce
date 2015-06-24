// Initilization of variables
s=1000 // m // distance OB (ref fig.20.13)
h=19.6 // m // height of shell from ground
g=9.81 // m/s^2 // acc due to gravity
// Calculations
// MOTION OF ENTIRE SHELL FROM O to A.
v_y=sqrt(2*(g)*h) // m/s // initial velocity of shell in vertical direction
t=v_y/g // seconds // time taken by the entire shell to reach point A
v_x=s/t // m/s // velocity of shell in vertical direction
// VELOCITIES OF THE TWO PARTS OF THE SHELL AFTER BURSTING AT A:
// Let v_x2 be the horizontal velocity of 1st & the 2nd part after bursting which is given as,
v_x2=v_x*2 // m/s
// Now distance BC travelled by part 2 is
BC=v_x2*t // m
// Distance from firing point OC
OC=s+BC // m
// Results
clc
printf('(a) The velocity of shell just before bursting is %f m/s \n',v_x)
printf('(b) The velocity of first part immediately after the shell burst is %f m/s \n',v_x2)
printf('(c) The velocity of second part immediately after the shell burst is %f m/s \n',v_x2)
printf('(b) The distance between the firing point & the point where the second part of the shell hit the ground is %f m \n',OC)
