//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 17.6w
//calculation of the ratio of maximum intensity to the minimum intensity in the interference pattern

//given data
//width of one slit in Young's double slit experiment is double that of the other
n=2

//calculation
r=((n+1)^2)/((n-1)^2)//required ratio

printf('the ratio of maximum intensity to the minimum intensity in the interference pattern is %d',r)
