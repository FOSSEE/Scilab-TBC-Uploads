// Initilization of variables
f=1/6 // oscillations/second
x=8 // cm // distance from the mean position
// Calculations
omega=2*%pi*f
// Amplitude is given by eq'n 
r=sqrt((25*x^2)/16) // cm
// Maximum acceleration is given as,
a_max=(%pi/3)^2*10 // cm/s^2
// Velocity when it is at a dist of 5 cm (assume s=5 cm) is given by
s=5 // cm
v=omega*sqrt(r^2-s^2) // cm/s
// Results
clc
printf('(a) The amplitude of oscillation is %f cm \n',r)
printf('(b) The maximum acceleration is %f cm/s^2 \n',a_max)
printf('(c) The velocity of the particle at 5 cm from mean position  is %f cm/s \n',v)
