//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 3.18w
//calculation of speed of raindrops with respect to road and the moving man

//given data
vmg=10//velocity(in km/h) of the man with respect to the ground
theta=30//angle(in degree) made by vrg with Y axis

//calculation
vrg=vmg/sind(theta);// from equation of relative velocity   vrg=vrm+vmg...taking horizontal components 
vrm=vrg*cosd(theta);// from equation of relative velocity   vrg=vrm+vmg...taking vertical components 

printf('the speed of raindrops with respect to the ground is %3.2f km/h and with respect to the  man is %3.2f km/h',vrg,vrm);
