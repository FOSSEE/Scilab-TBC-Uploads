//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 10.8w
//calculation of the normal force and the frictional force that the floor exerts on the ladder

//given data
m=10//mass(in kg) of the ladder
theta=53//angle(in degree) made by the ladder against the vertical wall
g=9.8//gravitational acceleration(in m/s^2) of the earth

//calculation
//taking horizontal and vertical components
//N1 = f........................(1)
//N2 = W........................(2)
//taking torque about B
W=m*g
N2=W//from equation (2)
f=(W*sind(theta)/2)/(cosd(theta))//from equation (1)

printf('the normal force that the floor exerts on the ladder is %d N',N2)
printf('\nthe frictional force that the floor exerts on the ladder is %d N',f)
