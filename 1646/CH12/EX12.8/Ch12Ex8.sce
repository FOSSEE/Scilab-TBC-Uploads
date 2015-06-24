// Scilab Code Ex12.8 :Page-607 (2011)
clc; clear;
A = 500;....// Area of the B-H loop, joule per metre cube
n = 50;....// Total number of cycles, Hz
m = 9;....// Mass of the core, kg
d = 7.5e+3;....// Density of the core, kg/metre cube
t = 3600;....// Time during which the energy loss takes place, s
V = m/d;....// Volume of the core, metre cube
E = n*V*A*t;....// Hystersis loss of energy per hour, joule
printf("\nThe hystersis loss per hour = %5.2eJ", E);

// Result
// The hystersis loss per hour = 1.08e+005J 
