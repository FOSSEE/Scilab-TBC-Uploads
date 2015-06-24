//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 10.9w
//calculation of the contact force exerted by the floor on each leg of ladder

//given data
theta=60//angle(in degree) between the two legs
m=80//mass(in kg) of the person
g=9.8//gravitational acceleration(in m/s^2) of the earth

//calculation
N=m*g/2
T=(N*2*tand(90-theta))/1

printf('the contact force exerted by the floor on each leg of ladder %d N',N)
printf('\nthe tension in the crossbar is %d N',T)
