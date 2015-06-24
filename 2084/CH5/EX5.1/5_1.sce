//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
  clc;clear;
//example 5.1
//calculation of force exerted by the string on a particle

//given data
m=.5//mass(in kg) of the particle
g=9.8//gravitational acceleration(in m/s^2) of the earth

//calculation
T=m*g//tension in the string is equal to the downward force exerted by earth

printf('the force exterted by the string on particle in vertically upward direction is %3.2f N',T);
