//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 9.10w
//calculation of the average force exerted by the hero on the machine gun

//given data
m=50*10^-3//mass(in kg) of the bullet
v=1*10^3//velocity(in m/s) of the bullet
n=20//number of bullets fired
t=4//time(in s) required in firing the bullets

//calculation
me=m*v//momentumof each bullet
f=me*n/t//force=rate of change of momentum

printf('the average force exerted by the hero on the machine gun is %d N',f)
