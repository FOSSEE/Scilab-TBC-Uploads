//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 7.7w
//calculation of the value of force exerted by the air on the plane

//given data
v=900*10^3/(60*60)//speed(in m/s) of the fighter plane
r=2000//radius(in m)of the vertical circle
M=16000//mass(in kg)
g=9.8//gravitational acceleration(in m/s^2) of the earth

//calculation
//from Newton's second law 
//F-M*g = M*v*v/r
//from above equation,we get
F=M*(g+(v*v/r))

printf(' the force exerted by the air,on the plane in upward direction is %3.2e N',F)
