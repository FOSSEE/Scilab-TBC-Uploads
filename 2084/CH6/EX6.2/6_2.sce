//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 6.2
//calculation of the force of friction exerted by the horizontal surface on the box

//given data
M=20//mass(in kg) of the box
muk=.25//coefficient of kinetic friction
g=9.8//gravitational acceleration(in m/s^2) of the earth

//calculation
fk=muk*M*g//formula of kinetic friction

printf('the force of friction exerted by the horizontal surface on the box,in opposite direction to the pull is %3.2f N',fk)
