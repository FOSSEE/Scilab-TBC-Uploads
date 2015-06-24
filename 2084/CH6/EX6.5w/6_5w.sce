//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 6.5w
//calculation of the coefficient of kinetic friction 

//given data
theta=30//angle(in degree)f the incline
g=10//gravitational acceleration(in m/s^2) of the earth

//calculation
a=g/4//acceleration(in m/s^2) of the block.....given
//f=m*g/4................taking parallel components to the incline
//N=m*g*cosd(theta)......taking vertical components to the incline
//from above equations,we get
muk=1/(4*cosd(theta))//     muk=f/N   equation of static friction

printf('the coefficient of kinetic friction is %3.2f',muk)
