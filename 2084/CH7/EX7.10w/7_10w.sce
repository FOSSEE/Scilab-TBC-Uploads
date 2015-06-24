//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 7.10w
//calculation of the minimum speed at which floor may be removed

//given data
r=2//radius(in m) of the rotor
mus=0.2//coefficient of static friction between the wall and the person
g=10//gravitational acceleration(in m/s^2) of the earth

//calculation
//by applying Newton's second law for horizontal direction
//fs = m*g...................................(1)
//by limiting friction
//mus*N = m*g or mus*m*v*v/r = m*g...........(2)
//from above equations,we get
v=sqrt(r*g/mus)

printf('the minimum speed at which floor may be removed is %3.1f m/s',v)
