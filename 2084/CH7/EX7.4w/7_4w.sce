//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 7.4w
//calculation of the value of elongation of the spring

//given data
k=100//spring constant(N/m) of the given spring
l0=.5//natural length(in m) of the string
m=.5//mass(in kg) of the particle
w=2//angualr velocity(in rad/s) of the mass

//calculation
//from the equation of horizontal force
//k*l = m*v*v/r = m*w*w*r = =m*w*w*(l0+l)........................(1)
//from above equation we get
l=(m*w*w*l0)/(k-(m*w*w))

printf('the value of elongation of the spring is %3.2f m or %3.1f cm',l,l*100)
