//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 9.13w
//calculation of the final velocity of the shuttle

//given data
v1=4000//speed(in km/hr) of shuttle with respect to the earth
v2=100//speed(in km/hr) of the module with respect to the shuttle

//calculation
M=1//taking mass M=1 kg  for solving the equation
vdash=v1-v2//speed of module with respect to the earth
V=(1/5)*((1*v1*6)-(vdash*1))//principle of conservation of linear momentum 

printf('the final velocity of the shuttle is %d km/h',V)
