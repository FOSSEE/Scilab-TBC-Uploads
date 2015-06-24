// Initilization of variables
x_1=0.1 // m // assume the distance of the particle from mean position as (x_1 & x_2)
x_2=0.2// m 
// assume velocities as v_1 & v_2
v_1=1.2 // m/s
v_2=0.8 // m/s
// Calculations
// The amplitude of oscillations is given by dividing eq'n 1 by 2 as,
r=sqrt(0.32/5) // m
omega=v_1/(sqrt(r^2-x_1^2)) // radians/second
t=(2*%pi)/omega // seconds
v_max=r*omega // m/s
// let the max acceleration be a which is given as,
a=r*omega^2 // m/s^2 
// Results
clc
printf('(a) The amplitude of oscillations is %f m \n',r)
printf('(b) The time period of oscillations is %f seconds \n',t)
printf('(c) The maximum velocity is %f m/s \n',v_max)
printf('(d) The maximum acceleration is %f m/s^2 \n',a) // the value of max acc is incorrect in the textbook
// NOTE: the value of t is incorrect in the text book
// The values may differ slightly due to decimal point accuracy
