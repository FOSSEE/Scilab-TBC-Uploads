clc
//Example 7.8
//Calculate the thrust on a rocket
m=1000//Kg/s
v_out=-3000//m/s its in the negative y direction
v_in=0//m/s
A=7//m^2
P=35000//Pa
F_thrust=(-m*(v_out-v_in)+P*A)/1000000//MN
printf("The thrust on the rocket is %f MN",F_thrust);