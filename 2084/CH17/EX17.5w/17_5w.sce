//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 17.5w
//calculation of the ratio of maximum intensity to the minimum intensity in the interference fringe pattern

//given data
//intensity of the light coming from one slit in Young's double slit experiment is double the intensity of the light coming from the other slit
n=2

//calculation
r=((sqrt(n)+1)^2)/((sqrt(n)-1)^2)//required ratio

printf('the ratio of maximum intensity to the minimum intensity in the interference fringe pattern is %d',round(r))
