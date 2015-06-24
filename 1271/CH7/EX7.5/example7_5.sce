clc 
// Given that
A = 0.05// amplitude in meter
T = 10 * %pi // time period of s.h.m. in sec
// Sample Problem 5 on page no. 7.24
printf("\n # PROBLEM 5 # \n")
v = A * (2 * %pi / T)
a = A * (2 * %pi / T)^2
printf("\n Standard formula used \n v = A * (2 * pi / T). \n a = A * (2 * pi / T)^2. \n ")
printf("\n Maximum velocity = %e meter/sec,\n acceleration = %e m/sec^2",v,a)
