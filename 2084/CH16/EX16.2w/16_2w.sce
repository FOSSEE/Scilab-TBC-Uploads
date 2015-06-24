//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 16.2w
//calculation of the location of the plane

//given data
v=510*10^3/(60*60)//speed(in m/s) of the plane
h=2000//height(in m) of the plane
vs=340//speed(in m.s) of the sound in air

//calculation
t=h/vs//time taken by the sound to reach the observer
d=v*t//location of the plane

printf('the plane will be %d m ahead of the observer on its line of motion',d)
